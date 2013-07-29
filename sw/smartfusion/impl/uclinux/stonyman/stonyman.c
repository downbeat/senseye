///////////////////////////////////////////////////////////////////////////////////////////////////
// Russ Bielawski (russ)
// University of Michigan
//
// stonyman.c
//
// VER    DATE        AUTHOR        DESC
// 0.01   2013-07-23  russ          created.  supports starting and stopping capture, and reading
//                                  from the FIFO in the interrupt (although data is merely
//                                  discarded).  there is some code for multiple cameras, but the
//                                  functional code supports a single camera only.
// 0.02   2013-07-25  russ          implemented stonyman_read.  a user-space program can now read
//                                  from the device file.  THERE IS NO CONCURRENCY PROTECTION.
//
// Stonyman linux device driver.
///////////////////////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////////////////////////
// includes
//
#include "stonyman.h"
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/fs.h>
#include <linux/cdev.h>
#include <linux/device.h>
#include <linux/interrupt.h>
#include <linux/slab.h>
#include <asm/uaccess.h>


////////////////////////////////////////////////////////////////////////////////////////////////////
// defines / constants
//
typedef  unsigned        uint32;
typedef  unsigned short  uint16;
typedef  unsigned char   uint8;

#define REG_BASE_ADDR_CAM         (0x40060000ul)
#define REG_MASK_CAM_IND          (0x00000080ul)
#define REG_CAM_REG_SPACE_WIDTH   (0x00000020ul)
#define REG_SET_OFFSET_CAM0       (REG_MASK_CAM_IND|(REG_CAM_REG_SPACE_WIDTH*0))
#define REG_SET_OFFSET_CAM1       (REG_MASK_CAM_IND|(REG_CAM_REG_SPACE_WIDTH*1))
#define REG_SET_OFFSET_CAM2       (REG_MASK_CAM_IND|(REG_CAM_REG_SPACE_WIDTH*2))
#define REG_SET_OFFSET_CAM3       (REG_MASK_CAM_IND|(REG_CAM_REG_SPACE_WIDTH*3))
#define REG_OFFSET_GLOB_STARTCAP  (0x00000000ul)
#define REG_OFFSET_GLOB_STATUS    (0x00000000ul)
#define REG_OFFSET_CAMX_STATUS    (0x00000000ul)
#define REG_OFFSET_CAMX_PXDATA    (0x00000004ul)

#define REG_CTRL                  (*((volatile uint32*)(REG_BASE_ADDR_CAM+REG_OFFSET_GLOB_STARTCAP)))
#define REG_FLAGS                 (*((volatile uint32*)(REG_BASE_ADDR_CAM+REG_OFFSET_GLOB_STATUS)))
#define REG_CAMX_BASE(xx)         (REG_BASE_ADDR_CAM+REG_MASK_CAM_IND+(REG_CAM_REG_SPACE_WIDTH*(xx)))
#define REG_CAMX_STATUS(xx)       (*((volatile uint32*)(REG_CAMX_BASE(xx)+REG_OFFSET_CAMX_STATUS)))
#define REG_CAMX_PXDATA(xx)       (*((volatile uint32*)(REG_CAMX_BASE(xx)+REG_OFFSET_CAMX_PXDATA)))

#define FLAG_SHIFT_BUSY           (0u)
#define FLAG_SHIFT_EMPTY          (0u)
#define FLAG_SHIFT_FULL           (1u)
#define FLAG_SHIFT_AFULL          (2u)

#define REG_BASE_ADDR_GPIO        (0x40013000ul)
#define REG_OFFSET_IRQ            (0x80)
#define REG_OFFSET_IN             (0x84)
#define REG_OFFSET_OUT            (0x88)

#define REG_GPIO_X_CFG(xx)        (*((volatile uint32*)(REG_BASE_ADDR_GPIO+(xx)*sizeof(uint32))))
#define REG_GPIO_IRQ              (*((volatile uint32*)(REG_BASE_ADDR_GPIO+REG_OFFSET_IRQ)))
#define REG_GPIO_IN               (*((volatile uint32*)(REG_BASE_ADDR_GPIO+REG_OFFSET_IN)))
#define REG_GPIO_OUT              (*((volatile uint32*)(REG_BASE_ADDR_GPIO+REG_OFFSET_OUT)))

#define FLAG_SHIFT_GPOUTEN        (0u)
#define FLAG_SHIFT_GPINEN         (1u)
#define FLAG_SHIFT_OUTBUFEN       (2u)
#define FLAG_SHIFT_INTEN          (3u)
#define FLAG_SHIFT_INT_TYPE       (5u)

#define MASK_GPOUTEN              (0x00000001ul)
#define MASK_GPINEN               (0x00000001ul)
#define MASK_OUTBUFEN             (0x00000001ul)
#define MASK_INTEN                (0x00000001ul)
#define MASK_INT_TYPE             (0x00000007ul)

#define GPIO_INT_TYPE_LEVEL_HIGH  (0u)
#define GPIO_INT_TYPE_LEVEL_LOW   (1u)
#define GPIO_INT_TYPE_POS_EDGE    (2u)
#define GPIO_INT_TYPE_NEG_EDGE    (3u)
#define GPIO_INT_TYPE_EITHER_EDGE (4u)

#define DEVICE_NAME               ("stonyman")
#define DEVICE_NAME_IDX           ("stonyman%d")
#define DEVICE_CLASS_NAME         ("imaging")

#define MINOR_START               (0)

#define NUM_CAMS                  (1)  // TODO: only supports one camera for now
#define GPIO_NUM(cam)             (0+(cam)) 
#define GPIO_IRQ_NUM(cam)         (GPIO_NUM(cam)+32)

// TODO: hardcoded for now
#define RESOLUTION_ROWS           (112)
#define RESOLUTION_COLS           (112)
#define RESOLUTION                (RESOLUTION_ROWS*RESOLUTION_COLS)

#define IMG_BUF_QUEUE_LEN         (3)


////////////////////////////////////////////////////////////////////////////////////////////////////
// local function prototypes
//
static int         stonyman_init(void);
static void        stonyman_teardown(void);
static int         stonyman_ioctl( struct inode *inode, struct file *filp,
                                   unsigned int cmd, unsigned long arg );
static ssize_t     stonyman_read(struct file *filp, char __user *buff, size_t count, loff_t *offp);
static irqreturn_t stonyman_interrupt(int irq, void *dev_id, struct pt_regs *regs);


////////////////////////////////////////////////////////////////////////////////////////////////////
// globals
//
static const struct file_operations  stonyman_fops =
{
   .read=stonyman_read,
   .write=NULL,
   .open=NULL,
   .release=NULL,
   .ioctl=stonyman_ioctl
};
static dev_t                         stonyman_dev_num;
static struct cdev                   stonyman_cdev;
static struct class                 *stonyman_class;
static struct device                *stonyman_device  [NUM_CAMS];

// FIXME: below here is data which ought to be camera specific (and only 1 camera is implemented)
static unsigned                      g_flag_capture_running;
static unsigned                      g_img_buf_head_idx        [NUM_CAMS];
static unsigned                      g_img_buf_tail_idx        [NUM_CAMS];
static unsigned                      g_img_buf_tail_readcount  [NUM_CAMS];
static uint8                        *g_img_buf                 [NUM_CAMS]  [IMG_BUF_QUEUE_LEN];


////////////////////////////////////////////////////////////////////////////////////////////////////
// local function definitions
//

//
// stonyman_init
//
static int stonyman_init(void)
{
   int rc;
   unsigned ii, jj, kk, ll;
   unsigned int tmpreg;
   char tmp_dev_filename[10];


   printk(KERN_INFO "stonyman: loading...\n");

   // dynamic device number allocation
   rc = alloc_chrdev_region(&stonyman_dev_num, MINOR_START, NUM_CAMS, DEVICE_NAME);
   if(0 > rc)
   {
      printk(KERN_ALERT "stonyman: could not allocate a major number\n");
      return rc;
   }

   // create device files
   stonyman_class = class_create(THIS_MODULE, DEVICE_CLASS_NAME);
   if(NULL == stonyman_class)
   {
      printk(KERN_ALERT "stonyman: cound not create device class \"%s\"\n", DEVICE_CLASS_NAME);
      unregister_chrdev_region(stonyman_dev_num, NUM_CAMS);
      // TODO: what should be the return code here?
      return -1;
   }
   // one device for each camera
   for(ii=0; ii<NUM_CAMS; ++ii)
   {
      stonyman_device[ii] = device_create( stonyman_class, NULL,
                                           MKDEV(MAJOR(stonyman_dev_num),MINOR(stonyman_dev_num)+ii),
                                           NULL, DEVICE_NAME_IDX, ii );
      if(NULL == stonyman_device[ii])
      {
         printk(KERN_ALERT "stonyman: could not create device \"%s\"\n", tmp_dev_filename);
         for(jj=0; jj<ii; ++jj)
         {
            device_destroy( stonyman_class,
                            MKDEV(MAJOR(stonyman_dev_num),MINOR(stonyman_dev_num)+jj) );
         }
         // FIXME: this seems like a bad idea without knowing what else shares the class!
         class_destroy(stonyman_class);
         unregister_chrdev_region(stonyman_dev_num, NUM_CAMS);
         return -1;
      }
   }

   // malloc the buffers (this is required for uclinux)
   for(ii=0; ii<NUM_CAMS; ++ii)
   {
      for(jj=0; jj<IMG_BUF_QUEUE_LEN; ++jj)
      {
         // TODO: check if I am supplying the best flags
         g_img_buf[ii][jj] = (uint8*)kmalloc(RESOLUTION*sizeof(uint8), GFP_KERNEL);
         // error (could not allocate data)
         if(NULL==g_img_buf[ii][jj])
         {
            printk( KERN_ALERT "stonyman: couldn't malloc %d bytes for the image buffer\n",
                    RESOLUTION );
            for(kk=0; kk<NUM_CAMS; ++kk)
            {
               device_destroy( stonyman_class,
                               MKDEV(MAJOR(stonyman_dev_num),MINOR(stonyman_dev_num)+kk) );
               for(ll=0; ll<IMG_BUF_QUEUE_LEN; ++ll)
               {
                  if((kk<ii) || ((kk==ii)&&(ll<jj)))
                  {
                     kfree(g_img_buf[kk][ll]);
                  }
               }
            }
            // FIXME: this seems like a bad idea without knowing what else shares the class!
            class_destroy(stonyman_class);
            unregister_chrdev_region(stonyman_dev_num, NUM_CAMS);
            // TODO: what should be the return code here?
            return -1;
         }
      }
   }

   // initalize data
   g_flag_capture_running=0;
   for(ii=0; ii<NUM_CAMS; ++ii)
   {
      g_img_buf_head_idx       [ii]=0;
      g_img_buf_tail_idx       [ii]=0;
      g_img_buf_tail_readcount [ii]=0;
   }

   // install interrupt handler(s)
   for(ii=0; ii<NUM_CAMS; ++ii)
   {
      // FIXME: SA_INTERRUPT undeclared?
      //rc = request_irq(GPIO_IRQ_NUM(ii), stonyman_interrupt, SA_INTERRUPT, DEVICE_NAME, NULL);
      rc = request_irq(GPIO_IRQ_NUM(ii), (irq_handler_t)stonyman_interrupt, 0, DEVICE_NAME, NULL);
      if(0 > rc)
      {
         printk(KERN_ALERT "stonyman: could not install interrupt handler camera \"%d\"\n", ii);
         for(jj=0; jj<NUM_CAMS; ++jj)
         {
            device_destroy( stonyman_class,
                            MKDEV(MAJOR(stonyman_dev_num),MINOR(stonyman_dev_num)+jj) );
            for(kk=0; kk<IMG_BUF_QUEUE_LEN; ++kk)
            {
               kfree(g_img_buf[jj][kk]);
            }
            if(jj < ii)
            {
               free_irq(GPIO_IRQ_NUM(ii), NULL);
            }
         }
         // FIXME: this seems like a bad idea without knowing what else shares the class!
         class_destroy(stonyman_class);
         unregister_chrdev_region(stonyman_dev_num, NUM_CAMS);
         return rc;
      }
   }

   // enable interrupt (FIXME: should go through API)
   tmpreg=REG_GPIO_X_CFG(0);
   // clear INT_TYPE
   tmpreg &= (uint32)(~(MASK_INT_TYPE<<FLAG_SHIFT_INT_TYPE));
   // set INT_TYPE to positive edge
   tmpreg |= (uint32)(GPIO_INT_TYPE_POS_EDGE<<FLAG_SHIFT_INT_TYPE);
   // enable interrupt
   tmpreg |= (uint32)(1ul<<FLAG_SHIFT_INTEN);
   REG_GPIO_X_CFG(0)=tmpreg;

   // register device
   cdev_init(&stonyman_cdev, &stonyman_fops);
   stonyman_cdev.owner = THIS_MODULE;
   // THIS ROUTINE SHOULD BE CALLED LAST (cdev_add)
   rc=cdev_add(&stonyman_cdev, stonyman_dev_num, NUM_CAMS); // FIXME: should NUM_CAMS be the count?
   if(0 > rc)
   {
      printk(KERN_ALERT "stonyman: could not register device (ret=%d)\n", rc);
      for(ii=0; ii<NUM_CAMS; ++ii)
      {
         device_destroy( stonyman_class,
                         MKDEV(MAJOR(stonyman_dev_num),MINOR(stonyman_dev_num)+ii) );
         free_irq(GPIO_IRQ_NUM(ii), NULL);
         for(jj=0; jj<IMG_BUF_QUEUE_LEN; ++jj)
         {
            kfree(g_img_buf[ii][jj]);
         }
      }
      // FIXME: this seems like a bad idea without knowing what else shares the class!
      class_destroy(stonyman_class);
      unregister_chrdev_region(stonyman_dev_num, NUM_CAMS);
      return rc;
   }


   printk(KERN_INFO "stonyman: ...loaded\n");


   return 0;
}

//
// stonyman_exit
//
static void stonyman_teardown(void)
{
   unsigned ii, jj;

   // FIXME: this has no concurrency safety

   printk(KERN_INFO "stonyman: unloading...\n");

   cdev_del(&stonyman_cdev);
   for(ii=0; ii<NUM_CAMS; ++ii)
   {
      device_destroy( stonyman_class,
                      MKDEV(MAJOR(stonyman_dev_num),MINOR(stonyman_dev_num)+ii) );
      free_irq(GPIO_IRQ_NUM(ii), NULL);
      for(jj=0; jj<IMG_BUF_QUEUE_LEN; ++jj)
      {
         kfree(g_img_buf[ii][jj]);
      }
   }
   // FIXME: this seems like a bad idea without knowing what else shares the class!
   class_destroy(stonyman_class);
   unregister_chrdev_region(stonyman_dev_num, NUM_CAMS);

   printk(KERN_INFO "stonyman: ...unloaded\n");
}

//
// stonyman_ioctl
//
static int stonyman_ioctl( struct inode *inode, struct file *filp,
                           unsigned int cmd, unsigned long arg )
{
   // TODO
   // check cmd parameter
   if( (STONYMAN_IOC_MAGIC != _IOC_TYPE(cmd)) ||
       (STONYMAN_IOC_CMD_CNT <= _IOC_NR(cmd)) )
   {
      return -ENOTTY;
   }

   // no currently implemented commands require data transfer
   if(0 != _IOC_DIR(cmd))
   {
      return -EFAULT;
   }

   switch(cmd)
   {
      case STONYMAN_IOC_START_CAPTURE:
         if(0 != g_flag_capture_running)
         {
            return -EALREADY;//-EBUSY;
         }
         // TODO: there is no synchronization!
         g_flag_capture_running = 1;
         if(0 == ((1<<FLAG_SHIFT_BUSY)&REG_FLAGS))
         {
            REG_CTRL=1u;
         }
         break;
      case STONYMAN_IOC_STOP_CAPTURE:
         // TODO: should I return an error if capture not running?
         // TODO: there is no synchronization!
         g_flag_capture_running = 0;
         break;
      // currently unimplemented
      case STONYMAN_IOC_SINGLE_FRAME:
      default:
         return -ENOTTY;
         break;
   }

   return 0;
}

//
// stonyman_interrupt
//
static ssize_t stonyman_read(struct file *filp, char __user *buff, size_t count, loff_t *offp)
{
   // TODO: this function does not perform the most robust error handling
   // FIXME: only supports one camera
   if(g_img_buf_head_idx[0] == g_img_buf_tail_idx[0])
   {
      if(0 == g_flag_capture_running)
      {
         // no data
      }
      else
      {
         // no data yet
         return -EAGAIN;
      }
   }

   if(RESOLUTION < count)
   {
      count = RESOLUTION;
   }

   // FIXME: cannot handle an error in the middle of a copy_to_user
   // FIXME: this routine assumes that the application never requests more than one frame at a time
   if(0 != copy_to_user(buff, g_img_buf[0][g_img_buf_head_idx[0]], count))
   {
      return -EFAULT;
   }

   g_img_buf_head_idx[0] = (g_img_buf_head_idx[0]+1)%IMG_BUF_QUEUE_LEN;

   // FIXME: don't know what to do with these!
   //*offp += count;
   //*offp %= RESOLUTION*IMG_BUF_QUEUE_LEN;

   return count;
}

//
// stonyman_interrupt
//
irqreturn_t stonyman_interrupt(int irq, void *dev_id, struct pt_regs *regs)
{
   unsigned int tmpdata;

   // FIXME: this has no concurrency safety
   // FIXME: only supports one camera

   // clear the camera FIFO
   while(0 == ((1<<FLAG_SHIFT_EMPTY)&REG_CAMX_STATUS(0)))
   {
      tmpdata=REG_CAMX_PXDATA(0);
      // store data
      // TODO: add mask functionality
      g_img_buf[0][g_img_buf_tail_idx[0]][g_img_buf_tail_readcount[0]+0] = (tmpdata>> 0)&0xFF;
      g_img_buf[0][g_img_buf_tail_idx[0]][g_img_buf_tail_readcount[0]+1] = (tmpdata>> 8)&0xFF;
      g_img_buf[0][g_img_buf_tail_idx[0]][g_img_buf_tail_readcount[0]+2] = (tmpdata>>16)&0xFF;
      g_img_buf[0][g_img_buf_tail_idx[0]][g_img_buf_tail_readcount[0]+3] = (tmpdata>>24)&0xFF;
      g_img_buf_tail_readcount[0] += 4;
   }

   REG_GPIO_IRQ |= (unsigned int)(1u << GPIO_NUM(0));

   if(112*112 == g_img_buf_tail_readcount[0])
   {
      printk(KERN_DEBUG "stonyman: read whole frame\n");
      g_img_buf_tail_idx[0]=(g_img_buf_tail_idx[0]+1)%IMG_BUF_QUEUE_LEN;
      // overrun
      // TODO: this is an error (kinda).  how shall we report this to the application?
      if(g_img_buf_tail_idx[0]==g_img_buf_head_idx[0])
      {
         g_img_buf_head_idx[0]=(g_img_buf_head_idx[0]+1)%IMG_BUF_QUEUE_LEN;
      }
      g_img_buf_tail_readcount[0]=0;
      // start another caputre
      if(0 != g_flag_capture_running)
      {
         REG_CTRL=1u;
      }
   }

   return IRQ_HANDLED;
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// lkm boilerplate
//
module_init(stonyman_init);
module_exit(stonyman_teardown);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Russ Bielawski");
MODULE_DESCRIPTION("Stonyman camera driver");

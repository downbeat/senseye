///////////////////////////////////////////////////////////////////////////////////////////////////
// Russ Bielawski (russ)
// University of Michigan
//
// stonyman.c
//
// VER   DATE        AUTHOR        DESC
// 0.01  2013-07-23  russ          created.  supports starting and stopping capture, and reading
//                                 from the FIFO in the interrupt (although data is merely
//                                 discarded).  there is some code for multiple cameras, but the
//                                 functional code supports a single camera only.
// 0.02  2013-07-25  russ          implemented stonyman_read.  a user-space program can now read
//                                 from the device file.  THERE IS NO CONCURRENCY PROTECTION.
// 0.03  2013-07-29  russ          added spinlocks to address the glaring race condition between
//                                 stonyman_read and stonyman_interrupt.
// 0.04  2013-07-30  russ          added support for seperate AFULL and 'capture done' interrupts,
//                                 both of which map to stonyman_interrupt.
// 0.05  2013-08-15  russ          added support for reading partial images in stonyman_read.
// 0.06  2013-08-15  russ          added auto-delay mode (enabling requires recompilation)
// 1.00  2013-08-21  russ          multi-camera support
//
// Stonyman linux device driver (LKM).
////////////////////////////////////////////////////////////////////////////////////////////////////


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
#include <linux/spinlock.h>
#include <linux/slab.h>
#include <asm/uaccess.h>


////////////////////////////////////////////////////////////////////////////////////////////////////
// defines / constants
//
typedef  unsigned        uint32;
typedef  unsigned short  uint16;
typedef  unsigned char   uint8;

#define REG_BASE_ADDR_CAM               (0x40060000ul)
#define REG_MASK_CAM_IND                (0x00000080ul)
#define REG_CG_REG_SPACE_WIDTH          (0x00000020ul)
#define REG_CAM_REG_SPACE_WIDTH         (0x00000008ul)
#define REG_OFFSET_GLOB_STARTCAP        (0x00000000ul)
#define REG_OFFSET_GLOB_STATUS          (0x00000000ul)
#define REG_OFFSET_CAM_STATUS           (0x00000000ul)
#define REG_OFFSET_CAM_PXDATA           (0x00000004ul)

#define REG_CTRL                        \
   (*((volatile uint32*)(REG_BASE_ADDR_CAM+REG_OFFSET_GLOB_STARTCAP)))
#define REG_FLAGS                       \
   (*((volatile uint32*)(REG_BASE_ADDR_CAM+REG_OFFSET_GLOB_STATUS)))
#define REG_CGX_CAMY_BASE(xx,yy)        \
   ( REG_BASE_ADDR_CAM+ \
     REG_MASK_CAM_IND+ \
     (REG_CG_REG_SPACE_WIDTH*(xx))+ \
     (REG_CAM_REG_SPACE_WIDTH*(yy)) )
#define REG_CGX_CAMY_STATUS(xx,yy)      \
   (*((volatile uint32*)(REG_CGX_CAMY_BASE(xx,yy)+REG_OFFSET_CAM_STATUS)))
#define REG_CGX_CAMY_PXDATA(xx,yy)      \
   (*((volatile uint32*)(REG_CGX_CAMY_BASE(xx,yy)+REG_OFFSET_CAM_PXDATA)))

#define FLAG_SHIFT_BUSY                 (0u)
#define FLAG_SHIFT_EMPTY                (0u)
#define FLAG_SHIFT_FULL                 (1u)
#define FLAG_SHIFT_AFULL                (2u)

#define GPIO_REG_BASE_ADDR              (0x40013000ul)
#define GPIO_REG_OFFSET_IRQ             (0x80)
#define GPIO_REG_OFFSET_IN              (0x84)
#define GPIO_REG_OFFSET_OUT             (0x88)

#define REG_GPIO_X_CFG(xx)              \
   (*((volatile uint32*)(GPIO_REG_BASE_ADDR+(xx)*sizeof(uint32))))
#define REG_GPIO_IRQ                    \
   (*((volatile uint32*)(GPIO_REG_BASE_ADDR+GPIO_REG_OFFSET_IRQ)))
#define REG_GPIO_IN                     \
   (*((volatile uint32*)(GPIO_REG_BASE_ADDR+GPIO_REG_OFFSET_IN)))
#define REG_GPIO_OUT                    \
   (*((volatile uint32*)(GPIO_REG_BASE_ADDR+GPIO_REG_OFFSET_OUT)))

#define GPIO_CFG_SHIFT_GPOUTEN          (0)
#define GPIO_CFG_MASK_GPOUTEN           (0x1ul)
#define GPIO_CFG_SHIFT_GPINEN           (1)
#define GPIO_CFG_MASK_GPINEN            (0x1ul)
#define GPIO_CFG_SHIFT_GPOUTBUFEN       (2)
#define GPIO_CFG_MASK_GPOUTBUFEN        (0x1ul)
#define GPIO_CFG_SHIFT_GPINTEN          (3)
#define GPIO_CFG_MASK_GPINTEN           (0x1ul)
#define GPIO_CFG_SHIFT_GPIOINT_TYPE     (5)
#define GPIO_CFG_MASK_GPIOINT_TYPE      (0x7ul)
#define GPIO_CFG_VAL(outen,inen,outbufen,inten,ioint_type) \
   (   (((outen)&GPIO_CFG_MASK_GPOUTEN)<<GPIO_CFG_SHIFT_GPOUTEN) \
     | (((inen)&GPIO_CFG_MASK_GPINEN)<<GPIO_CFG_SHIFT_GPINEN) \
     | (((outbufen)&GPIO_CFG_MASK_GPOUTBUFEN)<<GPIO_CFG_SHIFT_GPOUTBUFEN) \
     | (((inten)&GPIO_CFG_MASK_GPINTEN)<<GPIO_CFG_SHIFT_GPINTEN) \
     | (((ioint_type)&GPIO_CFG_MASK_GPIOINT_TYPE)<<GPIO_CFG_SHIFT_GPIOINT_TYPE) )

#define GPIO_CFG_INT_TYPE_LEVEL_HIGH    (0u)
#define GPIO_CFG_INT_TYPE_LEVEL_LOW     (1u)
#define GPIO_CFG_INT_TYPE_POS_EDGE      (2u)
#define GPIO_CFG_INT_TYPE_NEG_EDGE      (3u)
#define GPIO_CFG_INT_TYPE_EITHER_EDGE   (4u)

#define GPIO_IRQ_NUM(gpio)              ((gpio)+32u)

#define DEVICE_NAME                     ("stonyman")
#define DEVICE_NAME_IDX                 ("stonyman%d")
#define DEVICE_CLASS_NAME               ("imaging")

#define MINOR_START                     (0)

#define NUM_CAMS                        (2)

// TODO: simultaneous control of multiple cameras is not currently supported
//       (each camera needs its own control group)
#define GPIO_NUM_CAPTURE_DONE(cam)      (2*(cam))
#define GPIO_NUM_HIGH_WATER(cam)        (2*(cam)+1)
#define GPIO_IRQ_NUM_CAPTURE_DONE(cam)  GPIO_IRQ_NUM(GPIO_NUM_CAPTURE_DONE(cam))
#define GPIO_IRQ_NUM_HIGH_WATER(cam)    GPIO_IRQ_NUM(GPIO_NUM_HIGH_WATER(cam))

// TODO: hardcoded for now
#define RESOLUTION_ROWS               (112)
#define RESOLUTION_COLS               (112)
#define RESOLUTION                    (RESOLUTION_ROWS*RESOLUTION_COLS)

#define IMG_BUF_QUEUE_LEN             (3)

// TODO: auto-delay mode will be configurable via ioctl
//       (currently requires recompilation to enable)
#define FLAG_DEFAULT_AUTO_DELAY       (0)


////////////////////////////////////////////////////////////////////////////////////////////////////
// local function prototypes
//
static int         stonyman_init(void);
static void        stonyman_teardown(void);
static int         stonyman_open(struct inode *inodp, struct file *filp);
static int         stonyman_ioctl( struct inode *inodp, struct file *filp,
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
   .open=stonyman_open,
   .release=NULL,
   .ioctl=stonyman_ioctl
};
static dev_t                         stonyman_dev_num;
static struct cdev                   stonyman_cdev;
static struct class                 *stonyman_class;
static struct device                *stonyman_device           [NUM_CAMS];
static spinlock_t                   *stonyman_spinlock         [NUM_CAMS];
static unsigned                      g_minor                   [NUM_CAMS]; // FIXME: this feels like a hack
static unsigned                      g_flag_capture_running    [NUM_CAMS];
static unsigned                      g_flag_auto_delay_mode    [NUM_CAMS];
// FIXME: below here is data which ought to be camera specific (and only 1 camera is implemented)
static unsigned                      g_img_buf_head_idx        [NUM_CAMS];
static unsigned                      g_img_buf_tail_idx        [NUM_CAMS];
static unsigned                      g_img_buf_head_bufpos     [NUM_CAMS];
static unsigned                      g_img_buf_tail_bufpos     [NUM_CAMS];
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
   for(ii=0; ii<NUM_CAMS; ++ii)
   {
      g_minor                  [ii] = ii;
      g_flag_capture_running   [ii] = 0;
      g_flag_auto_delay_mode   [ii] = FLAG_DEFAULT_AUTO_DELAY;
      g_img_buf_head_idx       [ii] = 0;
      g_img_buf_tail_idx       [ii] = 0;
      g_img_buf_head_bufpos    [ii] = 0;
      g_img_buf_tail_bufpos    [ii] = 0;
   }

   for(ii=0; ii<NUM_CAMS; ++ii)
   {
      spin_lock_init(stonyman_spinlock[ii]);
   }

   // install interrupt handlers
   for(ii=0; ii<NUM_CAMS; ++ii)
   {
      // install capture done interrupt handler
      // FIXME: SA_INTERRUPT undeclared?
      //rc = request_irq(GPIO_IRQ_NUM_CAPTURE_DONE(ii), (irq_handler_t)stonyman_interrupt, SA_INTERRUPT, DEVICE_NAME, NULL);
      rc = request_irq( GPIO_IRQ_NUM_CAPTURE_DONE(ii), (irq_handler_t)stonyman_interrupt,
                        0, DEVICE_NAME, NULL );
      if(0 > rc)
      {
         printk(KERN_ALERT "stonyman: could not install capture done interrupt handler for camera %d\n", ii);
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
               free_irq(GPIO_IRQ_NUM_CAPTURE_DONE(ii), NULL);
               free_irq(GPIO_IRQ_NUM_HIGH_WATER(ii), NULL);
            }
         }
         // FIXME: this seems like a bad idea without knowing what else shares the class!
         class_destroy(stonyman_class);
         unregister_chrdev_region(stonyman_dev_num, NUM_CAMS);
         return rc;
      }

      // install high water interrupt handler
      // FIXME: SA_INTERRUPT undeclared?
      //rc = request_irq(GPIO_IRQ_NUM_HIGH_WATER(ii), (irq_handler_t)stonyman_interrupt, SA_INTERRUPT, DEVICE_NAME, NULL);
      rc = request_irq( GPIO_IRQ_NUM_HIGH_WATER(ii), (irq_handler_t)stonyman_interrupt,
                        0, DEVICE_NAME, NULL );
      if(0 > rc)
      {
         printk(KERN_ALERT "stonyman: could not install high water interrupt handler for camera %d\n", ii);
         for(jj=0; jj<NUM_CAMS; ++jj)
         {
            device_destroy( stonyman_class,
                            MKDEV(MAJOR(stonyman_dev_num),MINOR(stonyman_dev_num)+jj) );
            for(kk=0; kk<IMG_BUF_QUEUE_LEN; ++kk)
            {
               kfree(g_img_buf[jj][kk]);
            }
            if(jj <= ii)
            {
               free_irq(GPIO_IRQ_NUM_CAPTURE_DONE(ii), NULL);
               if(jj < ii)
               {
                  free_irq(GPIO_IRQ_NUM_HIGH_WATER(ii), NULL);
               }
            }
         }
         // FIXME: this seems like a bad idea without knowing what else shares the class!
         class_destroy(stonyman_class);
         unregister_chrdev_region(stonyman_dev_num, NUM_CAMS);
         return rc;
      }
   }

   // enable interrupts
   // FIXME: should go through some GPIO driver?
   for(ii=0; ii<NUM_CAMS; ++ii)
   {
      // enable capture finished interrupt
      REG_GPIO_X_CFG(GPIO_NUM_CAPTURE_DONE(ii)) = GPIO_CFG_VAL(0,1,0,1,GPIO_CFG_INT_TYPE_NEG_EDGE);
      // enable high water interrupt
      REG_GPIO_X_CFG(GPIO_NUM_HIGH_WATER(ii))   = GPIO_CFG_VAL(0,1,0,1,GPIO_CFG_INT_TYPE_POS_EDGE);
   }

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
         REG_GPIO_X_CFG(GPIO_NUM_CAPTURE_DONE(ii)) &= (uint32)(~(1ul<<GPIO_CFG_SHIFT_GPINTEN));
         REG_GPIO_X_CFG(GPIO_NUM_HIGH_WATER(ii))   &= (uint32)(~(1ul<<GPIO_CFG_SHIFT_GPINTEN));
         free_irq(GPIO_IRQ_NUM_CAPTURE_DONE(ii), NULL);
         free_irq(GPIO_IRQ_NUM_HIGH_WATER(ii), NULL);
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
// stonyman_teardown
//
static void stonyman_teardown(void)
{
   unsigned ii, jj;

   // FIXME: no concurrency protection

   printk(KERN_INFO "stonyman: unloading...\n");

   cdev_del(&stonyman_cdev);
   for(ii=0; ii<NUM_CAMS; ++ii)
   {
      device_destroy( stonyman_class,
                      MKDEV(MAJOR(stonyman_dev_num),MINOR(stonyman_dev_num)+ii) );
      REG_GPIO_X_CFG(GPIO_NUM_CAPTURE_DONE(ii)) &= (uint32)(~(1ul<<GPIO_CFG_SHIFT_GPINTEN));
      REG_GPIO_X_CFG(GPIO_NUM_HIGH_WATER(ii))   &= (uint32)(~(1ul<<GPIO_CFG_SHIFT_GPINTEN));
      free_irq(GPIO_IRQ_NUM_CAPTURE_DONE(ii), NULL);
      free_irq(GPIO_IRQ_NUM_HIGH_WATER(ii), NULL);
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
// stonyman_open
//
static int stonyman_open(struct inode *inodp, struct file *filp)
{
   // FIXME: this feels like a hack

   filp->private_data = (void*)(&g_minor[iminor(inodp)]);

   return 0;
}

//
// stonyman_ioctl
//
static int stonyman_ioctl( struct inode *inodp, struct file *filp,
                           unsigned int cmd, unsigned long arg )
{
   unsigned camidx;

   // FIXME: no concurrency protection!

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

   camidx = iminor(inodp);
   switch(cmd)
   {
      case STONYMAN_IOC_START_CAPTURE:
         if(0 != g_flag_capture_running[camidx])
         {
            return -EALREADY;//-EBUSY;
         }
         // TODO: there is no synchronization!
         g_flag_capture_running[camidx] = 1;
         if(0 == ((1<<FLAG_SHIFT_BUSY)&REG_FLAGS))
         {
            printk(KERN_DEBUG "stonyman: starting capture on camera %d\n", camidx);
            REG_CTRL |= (uint32)(1u<<camidx);
         }
         break;
      case STONYMAN_IOC_STOP_CAPTURE:
         // TODO: should I return an error if capture not running?
         // TODO: there is no synchronization!
         g_flag_capture_running[camidx] = 0;
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
// stonyman_read
//
static ssize_t stonyman_read(struct file *filp, char __user *buff, size_t count, loff_t *offp)
{
   unsigned camidx;
   unsigned long tmp_irq_flags;

   // FIXME: this function is strictly non-blocking (does not check the proper flags)
   // FIXME: this function does not perform the most robust error handling
   // FIXME: the locking in this function is terrible (too coarse)!

   camidx = *(unsigned*)(filp->private_data);

   tmp_irq_flags=0;
   spin_lock_irqsave(stonyman_spinlock[camidx], tmp_irq_flags);
   if(g_img_buf_head_idx[camidx] == g_img_buf_tail_idx[camidx])
   {
      // check if we have data
      // TODO: should I assert that g_img_buf_head_bufpos[camidx] <= g_img_buf_tail_bufpos[camidx]?
      if(g_img_buf_head_bufpos[camidx] >= g_img_buf_tail_bufpos[camidx])
      {
         if(0 == g_flag_capture_running[camidx])
         {
            // no data
            printk(KERN_DEBUG "stonyman_read: capture not running!\n");
            // FIXME: is this the right return?
            return -ENODATA;
         }
         else
         {
            // FIXME: block unless O_NONBLOCK is set
            // no data yet
            return -EAGAIN;
         }
      }
      // don't read more data than available
      else
      {
         count = g_img_buf_tail_bufpos[camidx] - g_img_buf_head_bufpos[camidx];
      }
   }
   else
   {
      // don't read past image boundaries (if there's more data, a repeat call to read will get it)
      if((RESOLUTION-g_img_buf_head_bufpos[camidx]) < count)
      {
         count = RESOLUTION - g_img_buf_head_bufpos[camidx];
      }
   }

   spin_unlock_irqrestore(stonyman_spinlock[camidx], tmp_irq_flags);

   printk(KERN_DEBUG "stonyman: reading from camera %d\n", camidx);

   // FIXME: cannot handle an error in the middle of a copy_to_user
   // FIXME: this routine assumes that the application never requests more than one frame at a time
   //        perform actual read from buffer
   if(0 != copy_to_user( buff,
              (const void*)
                 (&g_img_buf[camidx][g_img_buf_head_idx[camidx]][g_img_buf_head_bufpos[camidx]]),
              count ))
   {
      return -EFAULT;
   }


   spin_lock_irqsave(stonyman_spinlock[camidx], tmp_irq_flags);
   g_img_buf_head_bufpos[camidx] += count;

   // TODO: add assertion that g_img_buf_head_pos[camidx] never exceeds RESOLUTION
   if(RESOLUTION <= g_img_buf_head_bufpos[camidx])
   {
      // frame consumed

      // in auto-delay mode, the capture is started when the space is cleared (here)
      if( (0 != g_flag_auto_delay_mode[camidx]) &&
          (((g_img_buf_tail_idx[camidx]+1) % IMG_BUF_QUEUE_LEN) == g_img_buf_head_idx[camidx]) &&
          (RESOLUTION == g_img_buf_tail_bufpos[camidx]) )
      {
         g_img_buf_tail_idx[camidx] = (g_img_buf_tail_idx[camidx]+1) % IMG_BUF_QUEUE_LEN;
         g_img_buf_tail_bufpos[camidx] = 0;

         // can't overrun
         // TODO: add assertion?

         // start a new capture
         if(0 != g_flag_capture_running[camidx])
         {
            REG_CTRL |= (uint32)(1u<<camidx);
         }
      }

      // move head bookkeeping
      g_img_buf_head_idx[camidx] = (g_img_buf_head_idx[camidx]+1) % IMG_BUF_QUEUE_LEN;
      g_img_buf_head_bufpos[camidx] = 0;
   }
   spin_unlock_irqrestore(stonyman_spinlock[camidx], tmp_irq_flags);

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
   unsigned camidx;
   unsigned int tmpdata;
   unsigned long tmp_irq_flags;

   // FIXME: the locking in this function is terrible (too coarse)!
   // TODO: r/w spinlocks are semantically better (although in this usecase are probably no better)
   // FIXME: checking each camera each time the interrupt fires is hurting the framerate
   //        perhaps seperate interrupt handlers would be best.

   //printk(KERN_DEBUG "stonyman: interrupt fired\n");
   //for(camidx=0; camidx<NUM_CAMS; ++camidx)
   //{
   //   if(0 == ((1<<FLAG_SHIFT_EMPTY)&REG_CGX_CAMY_STATUS(camidx,0)))
   //   {
   //      printk(KERN_DEBUG "stonyman: data pending for camera %d\n", camidx);
   //   }
   //}

   // indiscriminately grab all data from all cameras (which are currently capturing)
   for(camidx=0; camidx<NUM_CAMS; ++camidx)
   {
      if(0 == (REG_GPIO_IRQ & (unsigned int)( (1u<<GPIO_NUM_CAPTURE_DONE(camidx)) | 
                                              (1u<<GPIO_NUM_HIGH_WATER(camidx)) )))
      {
         continue;
      }
      tmp_irq_flags = 0;
      spin_lock_irqsave(stonyman_spinlock[camidx], tmp_irq_flags);

      // clear the camera FIFO
      while(0 == ((1<<FLAG_SHIFT_EMPTY)&REG_CGX_CAMY_STATUS(camidx,0)))
      {
         tmpdata=REG_CGX_CAMY_PXDATA(camidx,0);
         // store data
         // TODO: add mask functionality
         g_img_buf[camidx][g_img_buf_tail_idx[camidx]][g_img_buf_tail_bufpos[camidx]+0]
            = (tmpdata>> 0)&0xFF;
         g_img_buf[camidx][g_img_buf_tail_idx[camidx]][g_img_buf_tail_bufpos[camidx]+1]
            = (tmpdata>> 8)&0xFF;
         g_img_buf[camidx][g_img_buf_tail_idx[camidx]][g_img_buf_tail_bufpos[camidx]+2]
            = (tmpdata>>16)&0xFF;
         g_img_buf[camidx][g_img_buf_tail_idx[camidx]][g_img_buf_tail_bufpos[camidx]+3]
            = (tmpdata>>24)&0xFF;
         g_img_buf_tail_bufpos[camidx] += 4;
      }

      // clear interrupt requests (doesn't really matter which; if any are pending, clear them)
      REG_GPIO_IRQ |= (unsigned int)(1u << GPIO_NUM_CAPTURE_DONE(camidx));
      REG_GPIO_IRQ |= (unsigned int)(1u << GPIO_NUM_HIGH_WATER(camidx));

      if(RESOLUTION == g_img_buf_tail_bufpos[camidx])
      {
         //printk(KERN_DEBUG "stonyman: read whole frame\n");
         if( (0 == g_flag_auto_delay_mode[camidx]) ||
             (((g_img_buf_tail_idx[camidx]+1) % IMG_BUF_QUEUE_LEN) != g_img_buf_head_idx[camidx]) )
         {
            g_img_buf_tail_idx[camidx] = (g_img_buf_tail_idx[camidx]+1) % IMG_BUF_QUEUE_LEN;
            g_img_buf_tail_bufpos[camidx] = 0;

            // overrun
            // TODO: this is an error (kinda).  how shall we report this to the application?
            if(g_img_buf_tail_idx[camidx] == g_img_buf_head_idx[camidx])
            {
               // FIXME: should I assert 0==g_flag_auto_delay_mode[camidx]?
               // if auto-delay mode is disabled, overrun the unread buffer
               g_img_buf_head_idx[camidx] = (g_img_buf_head_idx[camidx]+1) % IMG_BUF_QUEUE_LEN;
            }

            // start a new capture
            if(0 != g_flag_capture_running[camidx])
            {
               REG_CTRL |= (uint32)(1u<<camidx);
			}
         }
         else
         {
            // auto-delay mode and no free frame buffer
            // do nothing: stonyman_read will perform the bookkeeping when a frame is consumed
         }
      }
      spin_unlock_irqrestore(stonyman_spinlock[camidx], tmp_irq_flags);
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

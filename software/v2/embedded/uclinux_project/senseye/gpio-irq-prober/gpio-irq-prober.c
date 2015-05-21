////////////////////////////////////////////////////////////////////////////////////////////////////
// gpio-irq-prober.c
//
// Russ Bielawski
// University of Michigan
// 2013-07-12: created
////////////////////////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////////////////////////
// includes
//
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/interrupt.h>
#include <asm/delay.h>


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

#define REG_GPIO_X_CFG(xx)        (*((volatile uint32*)(REG_BASE_ADDR_GPIO+(xx))))
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


////////////////////////////////////////////////////////////////////////////////////////////////////
// globals
//
/*static unsigned int major;
struct file_operations prober_fops =
{
   .read=NULL,
   .write=NULL,
   .open=NULL,
   .release=NULL
};*/


////////////////////////////////////////////////////////////////////////////////////////////////////
// local function prototypes
//
static void trigger_interrupt(void);


////////////////////////////////////////////////////////////////////////////////////////////////////
// main
//
static int prober_init(void)
{
   unsigned tmpmask, irqnum;

   printk("gpio-irq-prober: loading...\n");

   tmpmask=probe_irq_on();
   trigger_interrupt();
   irqnum=probe_irq_off(tmpmask);

   if(0!=irqnum)
   {
      printk("gpio-irq-prober: IRQ number found!\n");
      printk("gpio-irq-prober: IRQ # => %d\n",irqnum);
   }
   else
   {
      printk("gpio-irq-prober: IRQ number not found :(\n");
   }

   return 0;
}

static int prober_exit(void)
{
   printk("gpio-irq-prober: unloading...\n");
   return 0;
}

/*int main(int argc, char** argv)
{
   trigger_interrupt();

   return 0;
}*/


////////////////////////////////////////////////////////////////////////////////////////////////////
// local function definitions
//
static void trigger_interrupt(void)
{
   uint32 tmpreg,tmpdata;
   tmpreg=REG_GPIO_X_CFG(0);
   printk("gpio-irq-prober: initial values:\n");
   printk("gpio-irq-prober: GPIO_0_CFG: 0x%08X\n", (unsigned)tmpreg);
   printk("gpio-irq-prober:  - GPOUTEN?       %d\n",(unsigned)((tmpreg>>FLAG_SHIFT_GPOUTEN)&MASK_GPOUTEN)?1:0);
   printk("gpio-irq-prober:  - GPINEN?        %d\n",(unsigned)((tmpreg>>FLAG_SHIFT_GPINEN)&MASK_GPINEN)?1:0);
   printk("gpio-irq-prober:  - GPO_OUTBUFEN?  %d\n",(unsigned)((tmpreg>>FLAG_SHIFT_OUTBUFEN)&MASK_OUTBUFEN)?1:0);
   printk("gpio-irq-prober:  - INTEN?         %d\n",(unsigned)((tmpreg>>FLAG_SHIFT_INTEN)&MASK_INTEN)?1:0);
   printk("gpio-irq-prober:  - INT_TYPE =     0x%01X\n",(unsigned)((tmpreg>>FLAG_SHIFT_INT_TYPE)&MASK_INT_TYPE));
   printk("gpio-irq-prober: GPIO_IRQ:   0x%08X\n", (unsigned)REG_GPIO_IRQ);

   // clear INT_TYPE
   tmpreg &= (uint32)(~(MASK_INT_TYPE<<FLAG_SHIFT_INT_TYPE));
   // set INT_TYPE to positive edge
   tmpreg |= (uint32)(GPIO_INT_TYPE_POS_EDGE<<FLAG_SHIFT_INT_TYPE);
   // enable interrupt
   tmpreg |= (uint32)(1ul<<FLAG_SHIFT_INTEN);

   printk("gpio-irq-prober: writing GPIO_O_CFG=0x%08X\n",(unsigned)tmpreg);
   REG_GPIO_X_CFG(0)=tmpreg;

   tmpreg=0u;
   tmpreg=REG_GPIO_X_CFG(0);
   printk("gpio-irq-prober: after setting interrupt type and enabling\n");
   printk("gpio-irq-prober: GPIO_0_CFG: 0x%08X\n", (unsigned)tmpreg);
   printk("gpio-irq-prober:  - GPOUTEN?       %d\n",((tmpreg>>FLAG_SHIFT_GPOUTEN)&MASK_GPOUTEN)?1:0);
   printk("gpio-irq-prober:  - GPINEN?        %d\n",(unsigned)((tmpreg>>FLAG_SHIFT_GPINEN)&MASK_GPINEN)?1:0);
   printk("gpio-irq-prober:  - GPO_OUTBUFEN?  %d\n",((tmpreg>>FLAG_SHIFT_OUTBUFEN)&MASK_OUTBUFEN)?1:0);
   printk("gpio-irq-prober:  - INTEN?         %d\n",((tmpreg>>FLAG_SHIFT_INTEN)&MASK_INTEN)?1:0);
   printk("gpio-irq-prober:  - INT_TYPE =     0x%01X\n",(unsigned)((tmpreg>>FLAG_SHIFT_INT_TYPE)&MASK_INT_TYPE));
   printk("gpio-irq-prober: GPIO_IRQ:   0x%08X\n", (unsigned)REG_GPIO_IRQ);

   // trigger capture
   printk("gpio-irq-prober: regflags = 0x%02X\n",(unsigned)(REG_FLAGS&0xFF));
   REG_CTRL=1ul;
   printk("gpio-irq-prober: regflags = 0x%02X\n",(unsigned)(REG_FLAGS&0xFF));
   do {/*nothing*/} while ( !(1u&REG_GPIO_IRQ) );
   printk("gpio-irq-prober: regflags = 0x%02X\n",(unsigned)(REG_FLAGS&0xFF));
   // FIXME: using magic constant  (the first bit of REG_FLAGS is the BUSY flag)
   do {/*nothing*/} while ( (1u&REG_FLAGS) );
   printk("gpio-irq-prober: regflags = 0x%02X\n",(unsigned)(REG_FLAGS&0xFF));

   // clear the camera FIFO
   while(0 == ((1<<FLAG_SHIFT_EMPTY)&REG_CAMX_STATUS(0)))
   {
      tmpdata=REG_CAMX_PXDATA(0);
   }

   tmpreg=0u;
   tmpreg=REG_GPIO_X_CFG(0);
   printk("gpio-irq-prober: after triggering capture\n");
   printk("gpio-irq-prober: GPIO_IRQ:   0x%08X\n", (unsigned)REG_GPIO_IRQ);

   REG_GPIO_IRQ=1u;
   tmpreg=0u;
   tmpreg=REG_GPIO_X_CFG(0);
   printk("gpio-irq-prober: after clearing GPIO_0 IRQ bit\n");
   printk("gpio-irq-prober: GPIO_IRQ:   0x%08X\n", (unsigned)REG_GPIO_IRQ);

}


////////////////////////////////////////////////////////////////////////////////////////////////////
// lkm boilerplate
//
module_init(prober_init);
module_exit(prober_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Russ Bielawski");

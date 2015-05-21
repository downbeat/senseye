///////////////////////////////////////////////////////////////////////////////////////////////////
// Russ Bielawski
// 2013-02-25
//
// dasblinkenlights.c
//
// VER    DATE        AUTHOR        DESC
// 0.01   2013-02-25  russ          created
// 1.00   2013-07-17  russ          added ability to supply GPIO pin number on command line
//
// Blink an LED on some GPIO from linux running on the uSDR.
///////////////////////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////////////////////////
// includes
//
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <unistd.h>


////////////////////////////////////////////////////////////////////////////////////////////////////
// defines / constants
//
typedef unsigned long uint32;

#define LED_GPIO_PIN_DEFAULT     (7)
#define LED_GPIO_PIN_MAX         (31)

#define GPIO_CFG_BASE_ADDR       (0x40013000ul)
#define GPIO_CFG(xx)             (*((uint32*)(GPIO_CFG_BASE_ADDR + 4*(xx))))
#define GPIO_OUT                 (*((uint32*)(0x40013088ul)))

#define GPIO_SHIFT_GPOUTEN       (0)
#define GPIO_MASK_GPOUTEN        (0x1ul)
#define GPIO_SHIFT_GPINEN        (1)
#define GPIO_MASK_GPINEN         (0x1ul)
#define GPIO_SHIFT_GPOUTBUFEN    (2)
#define GPIO_MASK_GPOUTBUFEN     (0x1ul)
#define GPIO_SHIFT_GPINTEN       (3)
#define GPIO_MASK_GPINTEN        (0x1ul)
#define GPIO_SHIFT_GPIOINT_TYPE  (5)
#define GPIO_MASK_GPIOINT_TYPE   (0x7ul)
#define GPIO_CFG_VAL(outen,inen,outbufen,inten,ioint_type) \
   (   (((outen)&GPIO_MASK_GPOUTEN)<<GPIO_SHIFT_GPOUTEN) \
     | (((inen)&GPIO_MASK_GPINEN)<<GPIO_SHIFT_GPINEN) \
     | (((outbufen)&GPIO_MASK_GPOUTBUFEN)<<GPIO_SHIFT_GPOUTBUFEN) \
     | (((inten)&GPIO_MASK_GPINTEN)<<GPIO_SHIFT_GPINTEN) \
     | (((ioint_type)&GPIO_MASK_GPIOINT_TYPE)<<GPIO_SHIFT_GPIOINT_TYPE) )


////////////////////////////////////////////////////////////////////////////////////////////////////
// globals
//
static unsigned g_flag_print_help;
static unsigned g_led_gpio_pin;


////////////////////////////////////////////////////////////////////////////////////////////////////
// local function prototypes
//
static void print_usage(char *progname);
static void print_help(char *progname);
static int  parse_args(int argc, char **argv);


////////////////////////////////////////////////////////////////////////////////////////////////////
// main
//
int main(int argc, char **argv)
{
   // parse cli
   g_flag_print_help=0;
   g_led_gpio_pin=LED_GPIO_PIN_DEFAULT;
   parse_args(argc,argv);
   if(0!=g_flag_print_help)
   {
      print_help(argv[0]);
      exit(0);
   }
   if(LED_GPIO_PIN_MAX<g_led_gpio_pin)
   {
      fprintf( stderr,"ERROR: GPIO pin number %d is out of range (max is %d)\n",
               g_led_gpio_pin,LED_GPIO_PIN_MAX );
      print_usage(argv[0]);
      exit(1);
   }


   // init GPIOs
   GPIO_CFG(g_led_gpio_pin) = GPIO_CFG_VAL(1,0,0,0,0);


   while(1)
   {
      // toggle GPIO
      GPIO_OUT ^= (uint32)(1<<g_led_gpio_pin);
      sleep(1);
   }


   // unreachable
   return 0;
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// local function definitions
//

//
// print_usage: prints a usage string for the program
//
static void print_usage(char *progname)
{
   fprintf(stderr, "Usage: %s [-g <pin>]\n", progname);
}

//
// print_help: prints the help for the program
//
static void print_help(char *progname)
{
   print_usage(progname);
   fprintf(stderr, "Blink an LED at 0.5Hz (or toggle any GPIO).\n");
   fprintf(stderr, "Specify GPIO pin with '-g' flag.\n");
}

//
// parse_args: parse cli
//
static int parse_args(int argc, char **argv)
{
   char cc;
   extern char *optarg;

   errno=0;

   // for some reason, checking for EOF wasn't working (maybe a uClinux peculiarity)
   // so, check against optind used instead
   while(argc>optind)
   {
      // (still safest to check against EOF here)
      if((cc = getopt(argc, argv, "g:h")) == EOF)
      {
         break;
      }
      switch (cc) {
         case 'g':
            g_led_gpio_pin=atoi(optarg);
            break;
         case 'h':
            g_flag_print_help=1u;
            break;
         default:
            errno=EINVAL;
            break;
      }
   }

   return(errno);
}


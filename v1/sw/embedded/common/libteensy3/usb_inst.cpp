#include "WProgram.h"

#ifdef USB_SERIAL
usb_serial_class Serial;
#endif

#ifdef USB_HID
usb_keyboard_class Keyboard;
usb_seremu_class Serial;
#endif


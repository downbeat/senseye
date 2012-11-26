#ifndef _usb_desc_h_
#define _usb_desc_h_

#include <stdint.h>
#include <stddef.h>

#define ENDPOINT_UNUSED			0x00
#define ENDPOINT_TRANSIMIT_ONLY		0x15
#define ENDPOINT_RECEIVE_ONLY		0x19
#define ENDPOINT_TRANSMIT_AND_RECEIVE	0x1D

#if defined(USB_SERIAL)
  #define VENDOR_ID		0x16C0
  #define PRODUCT_ID		0x0483
  #define DEVICE_CLASS		2	// 2 = Communication Class
  #define MANUFACTURER_NAME	{'T','e','e','n','s','y','d','u','i','n','o'}
  #define MANUFACTURER_NAME_LEN	11
  #define PRODUCT_NAME		{'U','S','B',' ','S','e','r','i','a','l'}
  #define PRODUCT_NAME_LEN	10
  #define EP0_SIZE		64
  #define NUM_ENDPOINTS		15
  #define CDC_STATUS_INTERFACE	0
  #define CDC_DATA_INTERFACE	1
  #define CDC_ACM_ENDPOINT	2
  #define CDC_RX_ENDPOINT       3
  #define CDC_TX_ENDPOINT       4
  #define CDC_ACM_SIZE          16
  #define CDC_RX_SIZE           64
  #define CDC_TX_SIZE           64
  #define NUM_INTERFACE		2
  #define CONFIG_DESC_SIZE	(9+9+5+5+4+5+7+9+7+7)
  #define ENDPOINT2_CONFIG	ENDPOINT_TRANSIMIT_ONLY
  #define ENDPOINT3_CONFIG	ENDPOINT_RECEIVE_ONLY
  #define ENDPOINT4_CONFIG	ENDPOINT_TRANSIMIT_ONLY

#elif defined(USB_HID)
  #define VENDOR_ID		0x16C0
  #define PRODUCT_ID		0x0482
  #define MANUFACTURER_NAME	{'T','e','e','n','s','y','d','u','i','n','o'}
  #define MANUFACTURER_NAME_LEN	11
  #define PRODUCT_NAME		{'K','e','y','b','o','a','r','d','/','M','o','u','s','e','/','J','o','y','s','t','i','c','k'}
  #define PRODUCT_NAME_LEN	23
  #define EP0_SIZE		64
  #define NUM_ENDPOINTS         15
  #define SEREMU_INTERFACE      2	// Serial emulation
  #define SEREMU_TX_ENDPOINT    1
  #define SEREMU_TX_SIZE        64
  #define SEREMU_TX_INTERVAL    1
  #define SEREMU_RX_ENDPOINT    2
  #define SEREMU_RX_SIZE        32
  #define SEREMU_RX_INTERVAL    2
  #define KEYBOARD_INTERFACE    0	// Keyboard
  #define KEYBOARD_ENDPOINT     3
  #define KEYBOARD_SIZE         8
  #define KEYBOARD_INTERVAL     1
  #define MOUSE_INTERFACE       1	// Mouse
  #define MOUSE_ENDPOINT        4
  #define MOUSE_SIZE            8
  #define MOUSE_INTERVAL        1
  #define JOYSTICK_INTERFACE    3	// Joystick
  #define JOYSTICK_ENDPOINT     5
  #define JOYSTICK_SIZE         16
  #define JOYSTICK_INTERVAL     2
  #define NUM_INTERFACE		4
  #define KEYBOARD_DESC_OFFSET	(9 + 9)
  #define MOUSE_DESC_OFFSET	(9 + 9+9+7 + 9)
  #define SEREMU_DESC_OFFSET	(9 + 9+9+7 + 9+9+7 + 9)
  #define JOYSTICK_DESC_OFFSET	(9 + 9+9+7 + 9+9+7 + 9+9+7+7 + 9)
  #define CONFIG_DESC_SIZE	(9 + 9+9+7 + 9+9+7 + 9+9+7+7 + 9+9+7)
  #define ENDPOINT1_CONFIG	ENDPOINT_TRANSIMIT_ONLY
  #define ENDPOINT2_CONFIG	ENDPOINT_RECEIVE_ONLY
  #define ENDPOINT3_CONFIG	ENDPOINT_TRANSIMIT_ONLY
  #define ENDPOINT4_CONFIG	ENDPOINT_TRANSIMIT_ONLY
  #define ENDPOINT5_CONFIG	ENDPOINT_TRANSIMIT_ONLY
#endif



// NUM_ENDPOINTS = number of non-zero endpoints (0 to 15)
extern const uint8_t usb_endpoint_config_table[NUM_ENDPOINTS];

typedef struct {
	uint16_t	wValue;
	uint16_t	wIndex;
	const uint8_t	*addr;
	uint16_t	length;
} usb_descriptor_list_t;

extern const usb_descriptor_list_t usb_descriptor_list[];


#endif

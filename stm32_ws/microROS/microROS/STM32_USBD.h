#ifndef STM32_USBD_FS_H_
#define STM32_USBD_FS_H_

#include "stm32fxxx_hal.h" // Include the generic HAL header
#include "usbd_cdc.h" // Include the USB CDC header

class STM32USBFS {
public:
  // Constructor
  STM32USBFS() {
    // Initialize USB peripheral using CubeMX generated code (or similar)
    MX_USB_OTG_FS_Init();
  }

  // Check if USB device is connected
  bool isConnected() {
    return HAL_USB_GetState(&hUSB_OTG_FS) == HAL_USB_STATE_CONNECTED;
  }

  // Send data over USB (replace with specific data transfer function)
  void write(uint8_t* data, int length) {
    USBD_CDC_SetTxBuffer(&hUsbDeviceFS, Buf, Len);
    USBD_CDC_TransmitPacket(&hUsbDeviceFS);
  }

  // Receive data from USB (replace with specific data receive function)
  int read(uint8_t* buffer, int length) {
    USBD_CDC_SetRxBuffer(&hUsbDeviceFS, usb_rx_buff[0]);
    USBD_CDC_ReceivePacket(&hUsbDeviceFS);
    return usb_rx_buff;
  }

private:
  // Replace with function prototypes from CubeMX generated code (or similar)
  extern PCD_HandleTypeDef hUSB_OTG_FS;
};

#endif // STM32_USBD_FS_H_

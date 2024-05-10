#ifndef __USB_VCP_EXTENSION_H_
#define __USB_VCP_EXTENSION_H_

#include "usbd_cdc.h"
#include "fifo.h"

#define USB_REC_MAX_NUM 5
#define VCP_TX_DATA_SIZE  4096

typedef int32_t(*usb_vcp_call_back_f)(uint8_t *buf, uint32_t len);
int32_t usb_vcp_rx_callback_register(usb_vcp_call_back_f fun);

void usb_vcp_init(void);
void usb_vcp_receive_processing(uint8_t* Buf, uint32_t *Len);
uint8_t usb_vcp_transmit_processing(uint8_t* Buf, uint16_t Len);

int32_t usb_tx_flush(void* argc);

#endif /* __USB_VCP_EXTENSION_H_ */


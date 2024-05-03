#include "usb_vcp_extension.h"

fifo_s_t usb_tx_fifo;
uint8_t usb_tx_fifo_buff[APP_TX_DATA_SIZE];
static usb_vcp_call_back_f usb_vcp_call_back[USB_REC_MAX_NUM];

void usb_vcp_init(void) { fifo_s_init(&usb_tx_fifo, usb_tx_fifo_buff, 4096); }

void usb_vcp_receive_processing(uint8_t *Buf, uint32_t *Len) {
  for (int i = 0; i < USB_REC_MAX_NUM; i++) {
    if (usb_vcp_call_back[i] != NULL) {
      (*usb_vcp_call_back[i])(Buf, *Len);
    }
  }
  return;
}

uint8_t usb_vcp_transmit_processing(uint8_t *Buf, uint16_t Len) {
  if (Len > 0) {
    fifo_s_puts(&usb_tx_fifo, (char *)Buf, Len);
    usb_tx_flush(NULL);
  }
}

int32_t usb_vcp_rx_callback_register(usb_vcp_call_back_f fun) {
  for (int i = 0; i < USB_REC_MAX_NUM; i++) {
    if (usb_vcp_call_back[i] == NULL) {
      usb_vcp_call_back[i] = fun;
      return USBD_OK;
    }
  }
  return USBD_FAIL;
}

int32_t usb_tx_flush(void *argc) {
  uint8_t result = USBD_OK;
  uint32_t send_num;

  FIFO_CPU_SR_TYPE cpu_sr = FIFO_GET_CPU_SR();
  FIFO_ENTER_CRITICAL();
  send_num = usb_tx_fifo.used_num;
  fifo_s_gets_noprotect(&usb_tx_fifo, (char *)UserTxBufferFS, send_num);
  FIFO_RESTORE_CPU_SR(cpu_sr);

  USBD_CDC_SetTxBuffer(&hUsbDeviceFS, UserTxBufferFS, send_num);
  result = USBD_CDC_TransmitPacket(&hUsbDeviceFS);
  return result;
}

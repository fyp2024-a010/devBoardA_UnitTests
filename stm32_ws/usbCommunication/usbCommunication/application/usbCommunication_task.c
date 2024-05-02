#include "usbCommunication_task.h"
#include <stdint.h>

uint8_t test_fifo = 0;

uint8_t int32_to_bytes(int32_t value, uint8_t *bytes, int8_t is_big_endian) {
  // Converts an int32_t value to a byte array.
  if (is_big_endian) {
    bytes[0] = (value >> 24) & 0xFF;
    bytes[1] = (value >> 16) & 0xFF;
    bytes[2] = (value >> 8) & 0xFF;
    bytes[3] = value & 0xFF;
  } else {
    bytes[0] = value & 0xFF;
    bytes[1] = (value >> 8) & 0xFF;
    bytes[2] = (value >> 16) & 0xFF;
    bytes[3] = (value >> 24) & 0xFF;
  }

  return 4; // Number of bytes written
}

int32_t bytes_to_int32(uint8_t *bytes, int8_t is_big_endian) {
  //  Converts a byte array to an int32_t value.
  if (sizeof(bytes) < 4) {
    return 0; // Or return some error code
  }

  int32_t value = 0;
  if (is_big_endian) {
    // Big-endian: most significant byte first
    value = (bytes[0] << 24) | (bytes[1] << 16) | (bytes[2] << 8) | bytes[3];
  } else {
    // Little-endian: least significant byte first
    value = (bytes[3] << 24) | (bytes[2] << 16) | (bytes[1] << 8) | bytes[0];
  }
  return value;
}

static int32_t usb_rcv_callback(uint8_t *buf, uint32_t len) {
  if (test_fifo == 1) {
    int32_t rx_data = bytes_to_int32(buf, 0);
    return rx_data;
  } else {
    int32_t rx_data = bytes_to_int32(buf, 0);
    return rx_data;
  }
}

void usb_send(int32_t data) {
  uint8_t buf[4];
  int32_to_bytes(data, buf, 0);
  if (test_fifo == 1) {
    usb_vcp_tx_write_fifo(buf, sizeof(buf));
  } else {
    transmit_processing_stm32_default(buf, sizeof(buf));
  }
}

void usbComm_task(void const *argument) {
  usb_vcp_init(true);
  usb_vcp_rx_callback_register(usb_rcv_callback);
  soft_timer_register(usb_tx_flush_run, NULL, 1);

  for (;;) {
    usb_send(32);
    osDelay(1);
  }
}

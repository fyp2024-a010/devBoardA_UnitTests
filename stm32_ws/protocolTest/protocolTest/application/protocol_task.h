#ifndef PROTOCOL_TASK_H_
#define PROTOCOL_TASK_H_

#include <stdbool.h>

#include "can.h"
// #include "usbd_cdc_if.h"
#include "timer_task.h"
#include "init.h"
#include "protocol.h"
#include "usb_vcp_extension.h"

#define FIRMWARE_VERSION_0 6u
#define FIRMWARE_VERSION_1 1u
#define FIRMWARE_VERSION_2 0u
#define FIRMWARE_VERSION_3 1u

#define FIRMWARE_VERSION ((FIRMWARE_VERSION_3 << 24) | (FIRMWARE_VERSION_2 << 16) | (FIRMWARE_VERSION_1 << 8) | FIRMWARE_VERSION_0)

#define MANIFOLD2_ADDRESS      0x00
#define CHASSIS_ADDRESS        0x01

#define RECV_PROTOCOL_SIGNAL      ( 1 << 0 )
#define SEND_PROTOCOL_SIGNAL      ( 1 << 1 )

void protocol_task_init(void);
void protocol_task(void);

#endif /* PROTOCOL_TASK_H_ */

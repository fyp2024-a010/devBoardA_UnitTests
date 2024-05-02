#ifndef USB_COMM_TASK_H_
#define USB_COMM_TASK_H_

#define SET_CHASSIS_CMD 0x1
#define SET_MOTOR_RPM_CMD 0x2
#define REQ_MOTOR_RPM_CMD 0x3
#define REQ_IMU_DATA_CMD 0x4
#define REQ_ODOM_CMD 0x5
#define PACKET_END_CHAR ';'

#include <stdint.h>
#include <stdbool.h>

#include "main.h"
#include "timer_task.h"

#include "usbd_cdc_if.h"
#include "usb_vcp_extension.h"

void usbComm_task (void const *argument);

#endif /* USB_COMM_TASK_H_ */

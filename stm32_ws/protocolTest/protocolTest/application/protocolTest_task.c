#include "protocolTest_task.h"

extern osThreadId protocol_test_task_t;

struct cmd_chassis_info cmd_chassis_info;
struct manifold_cmd manifold_cmd;

static int32_t manifold2_heart_package(uint8_t *buff, uint16_t len);
static int32_t report_firmware_version(uint8_t *buff, uint16_t len);
static int32_t chassis_speed_ctrl(uint8_t *buff, uint16_t len);
static int32_t chassis_spd_acc_ctrl(uint8_t *buff, uint16_t len);
static int32_t chassis_push_info(void *argc);

void protocol_test_task_init(void) {
  protocol_rcv_cmd_register(CMD_MANIFOLD2_HEART, manifold2_heart_package);
  protocol_rcv_cmd_register(CMD_REPORT_VERSION, report_firmware_version);
  protocol_rcv_cmd_register(CMD_SET_CHASSIS_SPEED, chassis_speed_ctrl);
  //  protocol_rcv_cmd_register(CMD_SET_CHASSIS_SPD_ACC, chassis_spd_acc_ctrl);
  soft_timer_register(chassis_push_info, NULL, 1000);
}

void protocol_test_task(void) {
  protocol_test_task_init();
  osEvent event;
  while (1) {
    event = osSignalWait(
        MANIFOLD2_CHASSIS_SIGNAL | MANIFOLD2_CHASSIS_ACC_SIGNAL, 500);

    if (event.status == osEventSignal) {
      if (event.value.signals & MANIFOLD2_CHASSIS_SIGNAL) {
        struct cmd_chassis_speed *pspeed;
        pspeed = &manifold_cmd.chassis_speed;
      }

      //      if (event.value.signals & MANIFOLD2_CHASSIS_ACC_SIGNAL) {
      //        struct cmd_chassis_spd_acc *pacc;
      //        pacc = &manifold_cmd.chassis_spd_acc;
      //      }
    }
  }
}

int32_t chassis_speed_ctrl(uint8_t *buff, uint16_t len) {
  if (len == sizeof(struct cmd_chassis_speed)) {
    // memcpy(&manifold_cmd.chassis_speed, buff, len);
    osSignalSet(protocol_test_task_t, MANIFOLD2_CHASSIS_SIGNAL);
  }
  return 0;
}

// int32_t chassis_spd_acc_ctrl(uint8_t *buff, uint16_t len) {
//   if (len == sizeof(struct cmd_chassis_spd_acc)) {
//     // memcpy(&manifold_cmd.chassis_spd_acc, buff, len);
//     osSignalSet(protocol_test_task_t, MANIFOLD2_CHASSIS_ACC_SIGNAL);
//   }
//   return 0;
// }

int32_t chassis_push_info(void *argc) {
  cmd_chassis_info.gyro_angle = 0;
  cmd_chassis_info.gyro_palstance = 0;
  cmd_chassis_info.position_x_mm = 0;
  cmd_chassis_info.position_y_mm = 0;
  cmd_chassis_info.angle_deg = 0;
  cmd_chassis_info.v_x_mm = 0;
  cmd_chassis_info.v_y_mm = 0;

  protocol_send(MANIFOLD2_ADDRESS, CMD_PUSH_CHASSIS_INFO, &cmd_chassis_info,
                sizeof(cmd_chassis_info));

  return 0;
}

int32_t report_firmware_version(uint8_t *buff, uint16_t len) {
  return FIRMWARE_VERSION;
}

int32_t manifold2_heart_package(uint8_t *buff, uint16_t len) {
  HAL_GPIO_TogglePin(LED_GREEN_GPIO_Port, LED_GREEN_Pin);
  return 0;
}

#ifndef PROTOCOL_TEST_TASK_H_
#define PROTOCOL_TEST_TASK_H_

#include "init.h"

#include "protocol_task.h"
#include "protocol.h"

#define MANIFOLD2_CHASSIS_SIGNAL (1 << 0)
#define MANIFOLD2_CHASSIS_ACC_SIGNAL (1 << 4)

#define CMD_MANIFOLD2_HEART                 (0x0001u)
#define CMD_REPORT_VERSION                  (0x0002u)

#define CMD_PUSH_CHASSIS_INFO               (0x0201u)
#define CMD_SET_CHASSIS_MODE                (0x0202u)
#define CMD_SET_CHASSIS_SPEED               (0x0203u)
#define CMD_GET_CHASSIS_PARAM               (0x0204u)
#define CMD_SET_CHASSIS_SPD_ACC             (0x0205u)

struct cmd_chassis_info
{
  int16_t gyro_angle;
  int16_t gyro_palstance;
  int32_t position_x_mm;
  int32_t position_y_mm;
  int16_t angle_deg;
  int16_t v_x_mm;
  int16_t v_y_mm;
};

struct cmd_chassis_speed
{
  int16_t vx; // forward/back
  int16_t vy; // left/right
  int16_t vw; // anticlockwise/clockwise
  int16_t rotate_x_offset;
  int16_t rotate_y_offset;
};

struct cmd_chassis_spd_acc
{
  int16_t   vx; 
  int16_t   vy;
  int16_t   vw; 

  int16_t   ax; 
  int16_t   ay; 
  int16_t   wz; 
  
  int16_t rotate_x_offset;
  int16_t rotate_y_offset;
};

struct manifold_cmd
{
  struct cmd_chassis_speed chassis_speed;
  struct cmd_chassis_spd_acc chassis_spd_acc;
};

void protocol_test_task_init(void);
void protocol_test_task(void);

#endif /* PROTOCOL_TEST_TASK_H_ */
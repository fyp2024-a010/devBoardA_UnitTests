
/*
DATA TRANSMITTED
0 Motor 1 Current High Byte
1 Motor 1 Current Low Byte
2 Motor 2 Current High Byte 
3 Motor 2 Current Low Byte
4 Motor 3 Current High Byte
5 Motor 3 Current Low Byte
6 Motor 4 Current High Byte
7 Motor 4 Current Low Byte
*/

/*
DATA RECEIVED
0 Control rotor mechanical angle High Byte
1 Control rotor mechanical angle Low Byte
2 Control rotational speed High Byte
3 Control rotational speed Low Byte
4 Actual Motor Current High Byte
5 Actual Motor Current Low Byte
6 Motor Temperature
7 NULL
*/

#ifndef __MOTOR_TEST_H__
#define __MOTOR_TEST_H__

#include "main.h"
#include "gpio.h"
#include "can.h"
#include <stdint.h>
#include "pid.h"

#define M_PI 3.14159265358979323846f
#define ENCODER_CNT_PER_ROUND  8192.0f
#define ENCODER_ANGLE_RATIO    (ENCODER_CNT_PER_ROUND/360.0f) // 8192 encoder counts per 360 degrees
#define GEAR_RATIO             (3591.0f/187.0f) // 3591:187

#define MOTOR_ID_1 0x201
#define MOTOR_ID_2 0x202
#define MOTOR_ID_3 0x203
#define MOTOR_ID_4 0x204

typedef struct
{
  uint16_t ecd; // encoder counter
  uint16_t last_ecd; 
  
  int16_t  speed_rpm; // speed in rpm
  int16_t  given_current; // current in mA

  int32_t  round_cnt; // rotation counter
  int32_t  total_ecd;
  int32_t  total_angle;
  
  uint16_t offset_ecd;
  uint32_t msg_cnt;
	
	int32_t ecd_raw_rate;
} motor_measure_t;

struct motor_cmd
{
  float motor1_rpm;
  float motor2_rpm;
  float motor3_rpm;
  float motor4_rpm;
};


struct can_std_msg
{
  uint32_t std_id;
  uint8_t dlc;
  uint8_t data[8];
};

struct motors_measure
{
  motor_measure_t motor_1_measure;
  motor_measure_t motor_2_measure;
  motor_measure_t motor_3_measure;
  motor_measure_t motor_4_measure;
};

void can_send_msg(CAN_HandleTypeDef *hcan, struct can_std_msg *tx_msg);
void can_receive_msg(CAN_HandleTypeDef *hcan);

void motor_test(void);

#endif /* __MOTOR_TEST_H__ */

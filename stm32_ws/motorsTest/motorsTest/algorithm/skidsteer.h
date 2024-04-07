/*
 * skidsteer.h
 *
 *  Created on: Apr 7, 2024
 *      Author: bentjh01
 */

#ifndef SKIDSTEER_H_
#define SKIDSTEER_H_

#ifdef SKIDSTEER_H_GLOBAL
#define SKIDSTEER_H_EXTERN
#else
#define SKIDSTEER_H_EXTERN extern
#endif

/************************ chassis parameter ****************************/
/* the radius of wheel(mm) */
#define RADIUS 76
/* the perimeter of wheel(mm) */
#define PERIMETER 478
/* wheel track distance(mm) */
#define WHEELTRACK 394
/* wheelbase distance(mm) */
#define WHEELBASE 415

/* gimbal is relative to chassis center x axis offset(mm) */
#define ROTATE_X_OFFSET 7
/* gimbal is relative to chassis center y axis offset(mm) */
#define ROTATE_Y_OFFSET 0

/* chassis motor use 3508 */
/* the deceleration ratio of chassis motor */
#define MOTOR_DECELE_RATIO (187.0f / 3591.0f) // gear ratio
/* single 3508 motor maximum speed, unit is rpm */
#define MAX_WHEEL_RPM 8500 //8347rpm = 3500mm/s
/* chassis maximum translation speed, unit is mm/s */
#define MAX_CHASSIS_VX_SPEED 3300 //8000rpm
#define MAX_CHASSIS_VY_SPEED 3300
/* chassis maximum rotation speed, unit is degree/s */
#define MAX_CHASSIS_VW_SPEED 300 //5000rpm

#define MOTOR_ENCODER_ACCURACY 8192.0f

/**
  * @brief  infantry structure configuration information
  */
struct skidsteer_structure
{
  float wheel_perimeter; /* the perimeter(mm) of wheel */
  float wheeltrack;      /* wheel track distance(mm) */
  float wheelbase;       /* wheelbase distance(mm) */
  float rotate_x_offset; /* rotate offset(mm) relative to the x-axis of the chassis center */
  float rotate_y_offset; /* rotate offset(mm) relative to the y-axis of the chassis center */
};

struct skidsteer_speed
{
  float vx; // forward/back
  float vy; // left/right
  float vw; // anticlockwise/clockwise
};

struct skidsteer_position
{
  float v_x_mm;
  float v_y_mm;
  float rate_deg;
  float position_x_mm;
  float position_y_mm;
  float angle_deg;
};

struct skidsteer_gyro
{
  float yaw_gyro_angle;
  float yaw_gyro_rate;
};

struct skidsteer
{
  struct skidsteer_structure param;
  struct skidsteer_speed speed;
  struct skidsteer_position position;
  struct skidsteer_gyro gyro;
  float  wheel_rpm[4];
};

struct skidsteer_motor_fdb
{
  float total_ecd;
  float speed_rpm;
};

void skidsteer_calculate(struct skidsteer *skid);
void skidsteer_position_measure(struct skidsteer *skid, struct skidsteer_motor_fdb wheel_fdb[]);

#endif /* SKIDSTEER_H_ */

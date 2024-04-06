/*
 * skidsteer.c
 *
 *  Created on: Apr 7, 2024
 *      Author: bentjh01
 */

#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#include "skidsteer.h"

#ifndef RADIAN_COEF
  #define RADIAN_COEF 57.3f // 180/PI
#endif

#define SKID_VAL_LIMIT(val, min, max) \
  do                                 \
  {                                  \
    if ((val) <= (min))              \
    {                                \
      (val) = (min);                 \
    }                                \
    else if ((val) >= (max))         \
    {                                \
      (val) = (max);                 \
    }                                \
  } while (0)

/**
  * @brief skidsteer glb_chassis velocity decomposition.F:forword; B:backword;
  * @param input : ccx=+vx(mm/s) ccw=+vw(deg/s)
  * @return output: every wheel speed(rpm)
  * @note  0=FR 1=FL 2=BL 3=BR
  */
void skidsteer_calculate(struct skidsteer *skid)
{
  static float rotate_ratio;
  static float wheel_rpm_ratio;

  rotate_ratio = (skid->param.wheeltrack / 2.0f) / RADIAN_COEF;
  wheel_rpm_ratio = 60.0f / (skid->param.wheel_perimeter * MOTOR_DECELE_RATIO);

  SKID_VAL_LIMIT(skid->speed.vx, -MAX_CHASSIS_VX_SPEED, MAX_CHASSIS_VX_SPEED); //mm/s
  SKID_VAL_LIMIT(skid->speed.vw, -MAX_CHASSIS_VW_SPEED, MAX_CHASSIS_VW_SPEED); //deg/s

  float wheel_rpm[4];
  float max = 0;
  wheel_rpm[0] = (skid->speed.vx + skid->speed.vw * rotate_ratio) * wheel_rpm_ratio;
  wheel_rpm[1] = (skid->speed.vx - skid->speed.vw * rotate_ratio) * wheel_rpm_ratio;
  wheel_rpm[2] = wheel_rpm[0];
  wheel_rpm[3] = wheel_rpm[1];

  //find max item
  for (uint8_t i = 0; i < 4; i++)
  {
    if (fabs(wheel_rpm[i]) > max)
      max = fabs(wheel_rpm[i]);
  }

  //equal proportion
  if (max > MAX_WHEEL_RPM)
  {
    float rate = MAX_WHEEL_RPM / max;
    for (uint8_t i = 0; i < 4; i++)
      wheel_rpm[i] *= rate;
  }
  memcpy(skid->wheel_rpm, wheel_rpm, 4 * sizeof(float));
}

void skidsteer_position_measure(struct skidsteer *skid, struct skidsteer_motor_fdb wheel_fdb[])
{
  // static float rotate_ratio_fr;
  // static float rotate_ratio_fl;
  // static float rotate_ratio_bl;
  // static float rotate_ratio_br;
  static float rpm_ratio;
  static float ecd_ratio;
  static double angle;
  static double last_d_x, last_d_y, last_d_w, d_x, d_y, d_w, diff_d_x, diff_d_y, diff_d_w;
  static double position_x, position_y, angle_w;
  static double v_x, v_y, v_w;

  static float rotate_ratio;
  static float wheel_rpm_ratio;

  rotate_ratio = (skid->param.wheeltrack / 2.0f) / RADIAN_COEF;
  wheel_rpm_ratio = 60.0f / (skid->param.wheel_perimeter * MOTOR_DECELE_RATIO);


  // rotate_ratio_fr = ((skid->param.wheelbase + skid->param.wheeltrack) / 2.0f -
  //                    skid->param.rotate_x_offset + skid->param.rotate_y_offset);
  // rotate_ratio_fl = ((skid->param.wheelbase + skid->param.wheeltrack) / 2.0f -
  //                    skid->param.rotate_x_offset - skid->param.rotate_y_offset);
  // rotate_ratio_bl = ((skid->param.wheelbase + skid->param.wheeltrack) / 2.0f +
  //                    skid->param.rotate_x_offset - skid->param.rotate_y_offset);
  // rotate_ratio_br = ((skid->param.wheelbase + skid->param.wheeltrack) / 2.0f +
  //                    skid->param.rotate_x_offset + skid->param.rotate_y_offset);
  rpm_ratio = skid->param.wheel_perimeter * MOTOR_DECELE_RATIO / (4 * 60.0f);
  ecd_ratio = skid->param.wheel_perimeter * MOTOR_DECELE_RATIO / (4 * MOTOR_ENCODER_ACCURACY);

  last_d_x = d_x;
  last_d_y = d_y;
  last_d_w = d_w;
  d_x = ecd_ratio * (-wheel_fdb[0].total_ecd + wheel_fdb[1].total_ecd + wheel_fdb[2].total_ecd - wheel_fdb[3].total_ecd);
  d_y = ecd_ratio * (-wheel_fdb[0].total_ecd - wheel_fdb[1].total_ecd + wheel_fdb[2].total_ecd + wheel_fdb[3].total_ecd);
  d_w = ecd_ratio * (-wheel_fdb[0].total_ecd / rotate_ratio_fr - wheel_fdb[1].total_ecd / rotate_ratio_fl - wheel_fdb[2].total_ecd / rotate_ratio_bl - wheel_fdb[3].total_ecd / rotate_ratio_br);

  diff_d_x = d_x - last_d_x;
  diff_d_y = d_y - last_d_y;
  diff_d_w = d_w - last_d_w;

  /* use glb_chassis gyro angle data */
  angle = skid->gyro.yaw_gyro_angle / RADIAN_COEF;

  position_x += diff_d_x * cos(angle);
  position_y += diff_d_x * sin(angle);

  angle_w += diff_d_w;

  skid->position.position_x_mm = position_x;        //mm
  skid->position.position_y_mm = position_y;        //mm
  skid->position.angle_deg = angle_w * RADIAN_COEF; //degree

  v_x = rpm_ratio * (-wheel_fdb[0].speed_rpm + wheel_fdb[1].speed_rpm + wheel_fdb[2].speed_rpm - wheel_fdb[3].speed_rpm);
  v_y = rpm_ratio * (-wheel_fdb[0].speed_rpm - wheel_fdb[1].speed_rpm + wheel_fdb[2].speed_rpm + wheel_fdb[3].speed_rpm);
  v_w = rpm_ratio * (-wheel_fdb[0].speed_rpm / rotate_ratio_fr - wheel_fdb[1].speed_rpm / rotate_ratio_fl - wheel_fdb[2].speed_rpm / rotate_ratio_bl - wheel_fdb[3].speed_rpm / rotate_ratio_br);

  skid->position.v_x_mm = v_x;                 //mm/s
  skid->position.v_y_mm = v_y;                 //mm/s
  skid->position.rate_deg = v_w * RADIAN_COEF; //degree/s
}
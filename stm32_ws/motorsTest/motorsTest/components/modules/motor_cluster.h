/****************************************************************************
 *  Copyright (C) 2019 RoboMaster.
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of 
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program. If not, see <http://www.gnu.org/licenses/>.
 ***************************************************************************/

#ifndef __MOTOR_CLUSTER_H__
#define __MOTOR_CLUSTER_H__

#ifdef motor_cluster_H_GLOBAL
  #define motor_cluster_H_EXTERN 
#else
  #define motor_cluster_H_EXTERN extern
#endif

#include "motor.h"
#include "pid_controller.h"

typedef struct motor_cluster *motor_cluster_t;

struct wheels
{
  float  wheel_rpm[4];
};

struct wheel_fdb
{
  float total_ecd;
  float speed_rpm;
};

struct motor_cluster
{
  struct object parent;

  struct wheels wheels;

  struct motor_device motor[4];
  struct pid motor_pid[4];
  struct pid_feedback motor_feedback[4];
  struct controller ctrl[4];
};

struct motor_cluster_info
{
  float wheel_rpm[4];
};

motor_cluster_t motor_cluster_find(const char *name);

int32_t motor_cluster_pid_register(struct motor_cluster *motor_cluster, const char *name, enum device_can can);
int32_t motor_cluster_execute(struct motor_cluster *motor_cluster);
int32_t motor_cluster_set_rpm(struct motor_cluster *motor_cluster, float motor1, float motor2, float motor3, float motor4);
int32_t motor_cluster_get_info(struct motor_cluster *motor_cluster, struct motor_cluster_info *info);

int32_t motor_cluster_enable(struct motor_cluster *motor_cluster);
int32_t motor_cluster_disable(struct motor_cluster *motor_cluster);

#endif // __MOTOR_CLUSTER_H__

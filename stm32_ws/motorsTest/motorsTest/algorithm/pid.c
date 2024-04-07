#include "pid.h"
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

void abs_limit(float *a, float ABS_MAX)
{
  if (*a > ABS_MAX)
    *a = ABS_MAX;
  if (*a < -ABS_MAX)
    *a = -ABS_MAX;
}

/**
 * Initializes a PID controller with the specified parameters.
 *
 * @param pid The PID controller structure to initialize.
 * @param kp The proportional gain parameter.
 * @param ki The integral gain parameter.
 * @param kd The derivative gain parameter.
 * @param maxout The maximum output value of the controller.
 * @param integral_limit The limit for the integral term.
 */
void pid_init(struct pid *pid, float kp, float ki, float kd, float maxout, float integral_limit)
{
  pid->param.kp = kp;
  pid->param.ki = ki;
  pid->param.kd = kd;
  pid->param.integral_limit = integral_limit;
  pid->param.max_out = maxout;

  pid->set = 0;
  pid->get = 0;
  pid->err = 0;
  pid->last_err = 0;

  pid->pout = 0;
  pid->iout = 0;
  pid->dout = 0;
  pid->out = 0;
}


float pid_calculate(struct pid *pid, float fdb, float ref)
{
  pid->get = fdb;
  pid->set = ref;
  pid->err = ref - fdb;

  pid->pout = pid->param.kp * pid->err;
  pid->iout += pid->param.ki * pid->err;
  pid->dout = pid->param.kd * (pid->err - pid->last_err);

  abs_limit(&(pid->iout), pid->param.integral_limit);
  pid->out = pid->pout + pid->iout + pid->dout;
  abs_limit(&(pid->out), pid->param.max_out);

  pid->last_err = pid->err;

  return pid->out;
}
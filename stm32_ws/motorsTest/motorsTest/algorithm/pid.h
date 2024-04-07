#ifndef __PID_H__
#define __PID_H__

#ifdef PID_H_GLOBAL
#define PID_H_EXTERN
#else
#define PID_H_EXTERN extern
#endif


typedef struct pid *pid_t;

struct pid_param
{
  float kp;
  float ki;
  float kd;

  float max_out;
  float integral_limit;
};

struct pid
{
  struct pid_param param;
  float set; // setpoint
  float get; // feedback

  float err;
  float last_err;

  float pout;
  float iout;
  float dout;
  float out;
};

void pid_init(
    struct pid *pid,
    float kp, float ki, float kd,
    float maxout, float integral_limit);

float pid_calculate(struct pid *pid, float fdb, float ref);

#endif // __PID_H__

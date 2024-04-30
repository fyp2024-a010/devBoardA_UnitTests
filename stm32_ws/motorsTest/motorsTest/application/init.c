#include "main.h"

#include "can.h"
#include "detect.h"
#include "drv_can.h" // replace board.h
#include "motor.h"
#include "motor_cluster.h" // replace chassis.h

#include "blinky_task.h"
#include "motor_task.h" // replace chassis_task.h
#include "timer_task.h"

#include "init.h"

osThreadId timer_task_t;
osThreadId blinky_task_t;
osThreadId motor_task_t;

void hw_init() { motor_task_init(); }

void init_task() {
  osThreadDef(TIMER_1MS, timer_task, osPriorityRealtime, 0, 512);
  timer_task_t = osThreadCreate(osThread(TIMER_1MS), NULL);

  osThreadDef(BLINKY_TASK, blinky_task, osPriorityIdle, 0, 64);
  blinky_task_t = osThreadCreate(osThread(BLINKY_TASK), NULL);

  osThreadDef(MOTOR_TASK, motor_task, osPriorityNormal, 0, 512);
  motor_task_t = osThreadCreate(osThread(MOTOR_TASK), NULL);
}

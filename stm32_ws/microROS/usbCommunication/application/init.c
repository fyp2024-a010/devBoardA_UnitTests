#include "main.h"

#include "timer_task.h"
#include "blinky_task.h"

#include "init.h"

osThreadId timer_task_t;
osThreadId blinky_task_t;

void hw_init(){
    soft_timer_init();
}

void init_task(){
    osThreadDef(TIMER_1MS, timer_task, osPriorityRealtime, 0, 512);
    timer_task_t = osThreadCreate(osThread(TIMER_1MS), NULL);

	osThreadDef(BLINKY_TASK, blinky_task, osPriorityIdle, 0, 64);
	blinky_task_t = osThreadCreate(osThread(BLINKY_TASK), NULL);
}

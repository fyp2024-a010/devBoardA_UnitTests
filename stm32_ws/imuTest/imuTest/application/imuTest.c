#include "main.h"

#include "blinky_task.h"
#include "imu_task.h"

#include "imuTest.h"

osThreadId blinky_task_t;
osThreadId imu_task_t;

void init_task(){
	osThreadDef(BLINKY_TASK, blinky_task, osPriorityLow, 0, 64);
	blinky_task_t = osThreadCreate(osThread(BLINKY_TASK), NULL);

	osThreadDef(IMU_TASK, imu_task, osPriorityNormal, 0, 128);
	imu_task_t = osThreadCreate(osThread(IMU_TASK), NULL);
}

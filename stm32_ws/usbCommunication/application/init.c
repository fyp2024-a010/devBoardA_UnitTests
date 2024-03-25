/*
 * init.c
 *
 *  Created on: Mar 25, 2024
 *      Author: bentjh01
 */


osThreadId communicate_task_t;

void task_init(void){
	  osThreadDef(COMMUNICATE_TASK, communicate_task_t, osPriorityHigh, 0, 4096);
	  communicate_task_t = osThreadCreate(osThread(COMMUNICATE_TASK), NULL);
}

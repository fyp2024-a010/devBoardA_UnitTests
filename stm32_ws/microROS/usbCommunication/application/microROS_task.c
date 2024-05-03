#include "microROS_task.h"

#include "main.h"
#include "timer_task.h"

#include "simple_pubsub.h"
#include <set>

// int32_t toggle_led_green(void *argc){
// 	HAL_GPIO_TogglePin(LED_GREEN_GPIO_Port, LED_GREEN_Pin);
// 	return 0;
// }

void microROS_task(void const *argument) {
  setup();
  // uint32_t t = osKernelSysTick();
  // uint32_t period = 100;

  // soft_timer_register(toggle_led_green, NULL, 1000);

  for (;;) {
    loop();
  }
}

#include "simple_pubsub.h"

#include <ros.h>
#include <std_msgs/String.h>

ros::NodeHandle nh;

std_msgs::String str_msg;
ros::Publisher chatter("chatter", &str_msg);
// ros::Subscriber<std_msgs::String> sub("chatter", &chatter_cb);
char hello[] = "Hello world!";

// void HAL_UART_TxCpltCallback(UART_HandleTypeDef *huart){
//   nh.getHardware()->flush();
// }

// void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart){
//   nh.getHardware()->reset_rbuf();
// }

// void chatter_cb(const std_msgs::String &msg)
// {
//   // Do something with the received message
// }



void setup(void)
{
  nh.initNode();
  nh.advertise(chatter);
}

void loop(void)
{
// #ifdef STM32F4xx
//   HAL_GPIO_TogglePin(LD2_GPIO_Port, LD2_Pin);
// #ifdef STM32F3xx
//   HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_3);
// #endif

  str_msg.data = hello;
  chatter.publish(&str_msg);
  nh.spinOnce();

  HAL_Delay(1000);
}
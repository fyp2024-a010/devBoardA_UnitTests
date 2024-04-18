#include "motorTest.h"

// motor_measure_t motor_1_measure;
// motor_measure_t motor_2_measure;
// motor_measure_t motor_3_measure;
// motor_measure_t motor_4_measure;

struct motors_measure motors_readings;

struct motor_cmd motor_cmd;

void can_filter_init(void){
  CAN_FilterTypeDef can_filter_st;
  can_filter_st.FilterActivation = ENABLE;
  can_filter_st.FilterMode = CAN_FILTERMODE_IDMASK;
  can_filter_st.FilterScale = CAN_FILTERSCALE_32BIT;
  can_filter_st.FilterIdHigh = 0x0000;
  can_filter_st.FilterIdLow = 0x0000;
  can_filter_st.FilterMaskIdHigh = 0x0000;
  can_filter_st.FilterMaskIdLow = 0x0000;
  can_filter_st.FilterBank = 0;
  can_filter_st.SlaveStartFilterBank = 14;
  can_filter_st.FilterFIFOAssignment = CAN_RX_FIFO0;

  if (HAL_CAN_ConfigFilter(&hcan1, &can_filter_st) != HAL_OK) {
	Error_Handler();
  }
  if (HAL_CAN_Start(&hcan1) != HAL_OK) {
	Error_Handler();
  }
  if (HAL_CAN_ActivateNotification(&hcan1, CAN_IT_RX_FIFO0_MSG_PENDING) != HAL_OK) {
	Error_Handler();
  }
  return;
}


// void get_motor_offset(motor_measure_t* ptr, uint8_t rxData[])
// {
//     ptr->ecd        = (uint16_t)(rxData[0] << 8 | rxData[1]);
//     ptr->offset_ecd = ptr->ecd;
// }

void encoder_data_handler(motor_measure_t* ptr, uint8_t rxData[])
{
  ptr->last_ecd = ptr->ecd;
  ptr->ecd      = (uint16_t)(rxData[0] << 8 | rxData[1]);
  
  if (ptr->ecd - ptr->last_ecd > 4096)
  {
    ptr->round_cnt--;
    ptr->ecd_raw_rate = ptr->ecd - ptr->last_ecd - 8192;
  }
  else if (ptr->ecd - ptr->last_ecd < -4096)
  {
    ptr->round_cnt++;
    ptr->ecd_raw_rate = ptr->ecd - ptr->last_ecd + 8192;
  }
  else
  {
    ptr->ecd_raw_rate = ptr->ecd - ptr->last_ecd;
  }

  ptr->total_ecd = ptr->round_cnt * ENCODER_CNT_PER_ROUND + ptr->ecd - ptr->offset_ecd;
  /// total angle, unit is degree
  ptr->total_angle = ptr->total_ecd / ENCODER_ANGLE_RATIO;
	ptr->speed_rpm     = ((int16_t)rxData[2] << 8 | rxData[3]);
  ptr->given_current = ((int16_t)rxData[4] << 8 | rxData[5]);
}

void can_receive_msg(CAN_HandleTypeDef *hcan)
{
  CAN_RxHeaderTypeDef rx_header;
  uint8_t rxData[8];

  if (HAL_CAN_GetRxMessage(&hcan1, CAN_RX_FIFO0, &rx_header, rxData) != HAL_OK) {
	Error_Handler();
  }
  switch (rx_header.StdId)
  {
  case MOTOR_ID_1:
    encoder_data_handler(&motors_readings.motor_1_measure, rxData);
    break;
  case MOTOR_ID_2:
    encoder_data_handler(&motors_readings.motor_2_measure, rxData);
    break;
  case MOTOR_ID_3:
    encoder_data_handler(&motors_readings.motor_3_measure, rxData);
    break;
  case MOTOR_ID_4:
    encoder_data_handler(&motors_readings.motor_4_measure, rxData);
    break;
  default:
    break;
  }
  return;
}

void HAL_CAN_RxFifo0MsgPendingCallback(CAN_HandleTypeDef *hcan) {
  can_receive_msg(hcan);
  return;
}


/**
 * @brief Sends bytes to control four motors.
 * @param motor1 The byte value for motor 1.
 * @param motor2 The byte value for motor 2.
 * @param motor3 The byte value for motor 3.
 * @param motor4 The byte value for motor 4.
 */
void motor_send_bytes(int16_t motor1, int16_t motor2, int16_t motor3, int16_t motor4)
{
  struct can_std_msg motor_byte_msg;
  motor_byte_msg.std_id = 0x200;
  motor_byte_msg.dlc = 8;
  motor_byte_msg.data[0] = (motor1 >> 8);
  motor_byte_msg.data[1] = motor1;
  motor_byte_msg.data[2] = (motor2 >> 8);
  motor_byte_msg.data[3] = motor2;
  motor_byte_msg.data[4] = (motor3 >> 8);
  motor_byte_msg.data[5] = motor3;
  motor_byte_msg.data[6] = (motor4 >> 8);
  motor_byte_msg.data[7] = motor4;
  can_send_msg(&hcan1, &motor_byte_msg);
}

/**
 * @brief Sends a CAN message. This function sends a CAN message using the specified CAN handle and message structure.
 * @param hcan Pointer to the CAN handle.
 * @param tx_msg Pointer to the CAN message structure.
 */
void can_send_msg(CAN_HandleTypeDef *hcan, struct can_std_msg *tx_msg)
{
  // Function variables
  int32_t txMailbox;
  CAN_TxHeaderTypeDef tx_header;

  // Set the CAN message header parameters
  tx_header.StdId = tx_msg->std_id;
  tx_header.RTR = CAN_RTR_DATA;
  tx_header.IDE = CAN_ID_STD;
  tx_header.DLC = tx_msg->dlc; // Number of data bytes
  tx_header.TransmitGlobalTime = DISABLE;

  // Add the CAN message to the transmit queue
  if (HAL_CAN_AddTxMessage(hcan, &tx_header, tx_msg->data, &txMailbox) != HAL_OK) {
    // Error handling
    HAL_GPIO_WritePin(LED_C_GPIO_Port, LED_C_Pin, SET);
    Error_Handler();
  }

  return;
}
/*
________________________________________________________________________________________________________________________

*/
void motor_test(void){
	HAL_GPIO_WritePin(POWER2_CTRL_GPIO_Port, POWER2_CTRL_Pin, SET);
	can_filter_init();
  // init_variables();

  struct pid motor_1_pid; // MOTOR_ID_1
  struct pid motor_2_pid; // MOTOR_ID_2
  struct pid motor_3_pid; // MOTOR_ID_3
  struct pid motor_4_pid; // MOTOR_ID_4
  pid_init(&motor_1_pid, 6.5f, 0.1f, 0.0f, 15000, 500);

  struct motor_cmd motor_cmd;
  motor_cmd.motor1_rpm = 60.0f * GEAR_RATIO;
  motor_cmd.motor2_rpm = 0;
  motor_cmd.motor3_rpm = 0;
  motor_cmd.motor4_rpm = 0;

	while (1)
	{
    float motor_1 = pid_calculate(&motor_1_pid, motors_readings.motor_1_measure.speed_rpm, motor_cmd.motor1_rpm);
    float motor_2 = pid_calculate(&motor_1_pid, motors_readings.motor_2_measure.speed_rpm, motor_cmd.motor1_rpm);
    float motor_3 = pid_calculate(&motor_1_pid, motors_readings.motor_3_measure.speed_rpm, motor_cmd.motor1_rpm);
    float motor_4 = pid_calculate(&motor_1_pid, motors_readings.motor_4_measure.speed_rpm, motor_cmd.motor1_rpm);

    motor_send_bytes((int16_t)motor_1, (int16_t)motor_2, (int16_t)motor_3, (int16_t)motor_4);
		
		HAL_Delay(1);
	}
}
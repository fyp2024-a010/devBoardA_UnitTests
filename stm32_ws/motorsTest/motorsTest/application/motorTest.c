#include "motorTest.h"

struct can_std_msg tx_msg;
struct can_std_msg rx_msg;

pid_t motor_FR_pid; // MOTOR_ID_1
pid_t motor_FL_pid;
pid_t motor_BR_pid;
pid_t motor_BL_pid;

void init_variables(){
  tx_msg.std_id = 0x200;
  tx_msg.dlc = 8;
  tx_msg.data[0] = 0x00;
  tx_msg.data[1] = 0x00;
  tx_msg.data[2] = 0x00;
  tx_msg.data[3] = 0x00;
  tx_msg.data[4] = 0x00;
  tx_msg.data[5] = 0x00;
  tx_msg.data[6] = 0x00;
  tx_msg.data[7] = 0x00;

  pid_struct_init(motor_FR_pid, 15000, 500, 6.5f, 0.1f, 0.0f);
  pid_struct_init(motor_FL_pid, 15000, 500, 6.5f, 0.1f, 0.0f);
  pid_struct_init(motor_BR_pid, 15000, 500, 6.5f, 0.1f, 0.0f);
  pid_struct_init(motor_BL_pid, 15000, 500, 6.5f, 0.1f, 0.0f);
}

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

void can_send_msg(CAN_HandleTypeDef *hcan, struct can_std_msg *tx_msg)
{
  int32_t txMailbox;

  CAN_TxHeaderTypeDef tx_header;
  tx_header.StdId = tx_msg->std_id;
  tx_header.RTR = CAN_RTR_DATA;
  tx_header.IDE = CAN_ID_STD;
  tx_header.DLC = tx_msg->dlc; // Number of data bytes
  tx_header.TransmitGlobalTime = DISABLE;
  if (HAL_CAN_AddTxMessage(hcan, &tx_header, tx_msg->data, &txMailbox) != HAL_OK) {
    HAL_GPIO_WritePin(LED_C_GPIO_Port, LED_C_Pin, SET);
	  Error_Handler();
  }
  return;
}

void can_receive_msg(CAN_HandleTypeDef *hcan, struct can_std_msg *rx_msg)
{
  CAN_RxHeaderTypeDef rx_header;
  uint8_t rxData[8];

  if (HAL_CAN_GetRxMessage(&hcan1, CAN_RX_FIFO0, &rx_header, rxData) != HAL_OK) {
	Error_Handler();
  }
  rx_msg->std_id = rx_header.StdId;
  rx_msg->dlc = rx_header.DLC;
  rx_msg->data[0] = rxData[0];
  rx_msg->data[1] = rxData[1];
  rx_msg->data[2] = rxData[2];
  rx_msg->data[3] = rxData[3];
  rx_msg->data[4] = rxData[4];
  rx_msg->data[5] = rxData[5];
  rx_msg->data[6] = rxData[6];
  rx_msg->data[7] = rxData[7];

  if (rx_msg->std_id == 0x201) {
    HAL_GPIO_WritePin(LED_B_GPIO_Port, LED_B_Pin, SET);
  }

  return;
}

#define ENCODER_ANGLE_RATIO    (8192.0f/360.0f)

/*
void get_moto_offset(moto_measure_t* ptr, uint8_t rxData[])
{
    ptr->ecd        = (uint16_t)(rxData[0] << 8 | rxData[1]);
    ptr->offset_ecd = ptr->ecd;
}

void encoder_data_handler(moto_measure_t* ptr, uint8_t rxData[])
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

  ptr->total_ecd = ptr->round_cnt * 8192 + ptr->ecd - ptr->offset_ecd;
  /// total angle, unit is degree
  ptr->total_angle = ptr->total_ecd / ENCODER_ANGLE_RATIO;
	ptr->speed_rpm     = ((int16_t)rxData[2] << 8 | rxData[3]);
  ptr->given_current = ((int16_t)rxData[4] << 8 | rxData[5]);
}
*/
void motor_test(void){
	HAL_GPIO_WritePin(POWER2_CTRL_GPIO_Port, POWER2_CTRL_Pin, SET);
	can_filter_init();
  init_variables();

	tx_msg.data[0] = 0; // 0 - 255
	tx_msg.data[1] = 0;
  tx_msg.data[2] = 0;
  tx_msg.data[3] = 0;
  tx_msg.data[4] = 0;
  tx_msg.data[5] = 0;
  tx_msg.data[6] = 0;
  tx_msg.data[7] = 0;

	while (1)
	{
		can_send_msg(&hcan1, &tx_msg);	
		HAL_Delay(10);
	}
}

void HAL_CAN_RxFifo0MsgPendingCallback(CAN_HandleTypeDef *hcan) {
  can_receive_msg(hcan, &rx_msg);
  return;
}

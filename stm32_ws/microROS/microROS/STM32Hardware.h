/* 
 * Software License Agreement (BSD License)
 *
 * Copyright (c) 2018, Kenta Yonekura (a.k.a. yoneken)
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of Willow Garage, Inc. nor the names of its
 *    contributors may be used to endorse or promote prducts derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

#ifndef ROS_STM32_HARDWARE_H_
#define ROS_STM32_HARDWARE_H_

#define STM32F4xx  // Change for your device
#ifdef STM32F3xx
#include "stm32f3xx_hal.h"
#include "stm32f3xx_hal_uart.h"
#endif /* STM32F3xx */
#ifdef STM32F4xx
#include "stm32f4xx_hal.h"
#include "usbd_cdc.h"
#endif /* STM32F4xx */
#ifdef STM32F7xx
#include "stm32f7xx_hal.h"
#include "stm32f7xx_hal_uart.h"
#endif /* STM32F7xx */

extern USBD_HandleTypeDef hUsbDeviceFS;

class STM32Hardware {
  protected:
    // UART_HandleTypeDef *huart;
    USBD_HandleTypeDef *_hUsbDeviceFS;

    const static uint16_t usb_rx_buff_len = 4096;
    uint8_t usb_rx_buff[usb_rx_buff_len];

    const static uint16_t fifo_buff_len = 4096;
    const static uint16_t usb_tx_fifo_buff_len = 4096;
    uint8_t usb_tx_buff[usb_tx_fifo_buff_len];

    // fifo_s_t usb_tx_fifo;

  public:
    STM32Hardware():
      _hUsbDeviceFS(&hUsbDeviceFS){
    }

    STM32Hardware(USBD_HandleTypeDef *hUsbDeviceFS_):
      hUsbDeviceFS(hUsbDeviceFS_){
    }
  
    void init(){
      // fifo_s_init(&usb_tx_fifo, usb_tx_buff, fifo_buff_len);
      USBD_CDC_SetTxBuffer(&hUsbDeviceFS, usb_tx_buff, 0);
      USBD_CDC_SetRxBuffer(&hUsbDeviceFS, usb_rx_buff);
    }

    uint8_t read(){
      USBD_CDC_SetRxBuffer(&hUsbDeviceFS, usb_rx_buff[0]);
      USBD_CDC_ReceivePacket(&hUsbDeviceFS);
      return usb_rx_buff;
    }

    // void flush(void){
    // }

    void write(uint8_t* data, int length){
      // fifo_s_puts(&usb_tx_fifo, (char*)data, length);
      uint8_t result = USBD_OK;
      USBD_CDC_HandleTypeDef *hcdc = (USBD_CDC_HandleTypeDef*)hUsbDeviceFS.pClassData;
      // if (hcdc->TxState != 0){
      //   return USBD_BUSY;
      // }
      USBD_CDC_SetTxBuffer(&hUsbDeviceFS, Buf, Len);
      result = USBD_CDC_TransmitPacket(&hUsbDeviceFS);

      // flush();
    }

    unsigned long time(){ return HAL_GetTick();; }

  protected:
};

#endif

################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../usbCommunication/bsp/boards/board.c \
../usbCommunication/bsp/boards/drv_can.c \
../usbCommunication/bsp/boards/drv_dr16.c \
../usbCommunication/bsp/boards/drv_flash.c \
../usbCommunication/bsp/boards/drv_imu.c \
../usbCommunication/bsp/boards/drv_io.c \
../usbCommunication/bsp/boards/drv_uart.c 

OBJS += \
./usbCommunication/bsp/boards/board.o \
./usbCommunication/bsp/boards/drv_can.o \
./usbCommunication/bsp/boards/drv_dr16.o \
./usbCommunication/bsp/boards/drv_flash.o \
./usbCommunication/bsp/boards/drv_imu.o \
./usbCommunication/bsp/boards/drv_io.o \
./usbCommunication/bsp/boards/drv_uart.o 

C_DEPS += \
./usbCommunication/bsp/boards/board.d \
./usbCommunication/bsp/boards/drv_can.d \
./usbCommunication/bsp/boards/drv_dr16.d \
./usbCommunication/bsp/boards/drv_flash.d \
./usbCommunication/bsp/boards/drv_imu.d \
./usbCommunication/bsp/boards/drv_io.d \
./usbCommunication/bsp/boards/drv_uart.d 


# Each subdirectory must supply rules for building sources it contributes
usbCommunication/bsp/boards/%.o usbCommunication/bsp/boards/%.su usbCommunication/bsp/boards/%.cyclo: ../usbCommunication/bsp/boards/%.c usbCommunication/bsp/boards/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../application/protocol -I../usbCommunication/application/protocol -I../usbCommunication/application -I../usbCommunication/components/objects -I../usbCommunication/components/support -I../usbCommunication/utilities/ulog -I../usbCommunication/utilities -I../usbCommunication/bsp/boards -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-usbCommunication-2f-bsp-2f-boards

clean-usbCommunication-2f-bsp-2f-boards:
	-$(RM) ./usbCommunication/bsp/boards/board.cyclo ./usbCommunication/bsp/boards/board.d ./usbCommunication/bsp/boards/board.o ./usbCommunication/bsp/boards/board.su ./usbCommunication/bsp/boards/drv_can.cyclo ./usbCommunication/bsp/boards/drv_can.d ./usbCommunication/bsp/boards/drv_can.o ./usbCommunication/bsp/boards/drv_can.su ./usbCommunication/bsp/boards/drv_dr16.cyclo ./usbCommunication/bsp/boards/drv_dr16.d ./usbCommunication/bsp/boards/drv_dr16.o ./usbCommunication/bsp/boards/drv_dr16.su ./usbCommunication/bsp/boards/drv_flash.cyclo ./usbCommunication/bsp/boards/drv_flash.d ./usbCommunication/bsp/boards/drv_flash.o ./usbCommunication/bsp/boards/drv_flash.su ./usbCommunication/bsp/boards/drv_imu.cyclo ./usbCommunication/bsp/boards/drv_imu.d ./usbCommunication/bsp/boards/drv_imu.o ./usbCommunication/bsp/boards/drv_imu.su ./usbCommunication/bsp/boards/drv_io.cyclo ./usbCommunication/bsp/boards/drv_io.d ./usbCommunication/bsp/boards/drv_io.o ./usbCommunication/bsp/boards/drv_io.su ./usbCommunication/bsp/boards/drv_uart.cyclo ./usbCommunication/bsp/boards/drv_uart.d ./usbCommunication/bsp/boards/drv_uart.o ./usbCommunication/bsp/boards/drv_uart.su

.PHONY: clean-usbCommunication-2f-bsp-2f-boards


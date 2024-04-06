################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../usbCommunication/boards/board.c \
../usbCommunication/boards/drv_can.c \
../usbCommunication/boards/drv_dr16.c \
../usbCommunication/boards/drv_flash.c \
../usbCommunication/boards/drv_imu.c \
../usbCommunication/boards/drv_io.c \
../usbCommunication/boards/drv_uart.c 

OBJS += \
./usbCommunication/boards/board.o \
./usbCommunication/boards/drv_can.o \
./usbCommunication/boards/drv_dr16.o \
./usbCommunication/boards/drv_flash.o \
./usbCommunication/boards/drv_imu.o \
./usbCommunication/boards/drv_io.o \
./usbCommunication/boards/drv_uart.o 

C_DEPS += \
./usbCommunication/boards/board.d \
./usbCommunication/boards/drv_can.d \
./usbCommunication/boards/drv_dr16.d \
./usbCommunication/boards/drv_flash.d \
./usbCommunication/boards/drv_imu.d \
./usbCommunication/boards/drv_io.d \
./usbCommunication/boards/drv_uart.d 


# Each subdirectory must supply rules for building sources it contributes
usbCommunication/boards/%.o usbCommunication/boards/%.su usbCommunication/boards/%.cyclo: ../usbCommunication/boards/%.c usbCommunication/boards/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../usbCommunication/application -I../usbCommunication/utilities -I../usbCommunication/algorithm -I../usbCommunication/support -I../usbCommunication/boards -I../usbCommunication/controller -I../usbCommunication/devices -I../usbCommunication/modules -I../usbCommunication/object -I../usbCommunication/test -I../usbCommunication/ulog -I../usbCommunication/protocol -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-usbCommunication-2f-boards

clean-usbCommunication-2f-boards:
	-$(RM) ./usbCommunication/boards/board.cyclo ./usbCommunication/boards/board.d ./usbCommunication/boards/board.o ./usbCommunication/boards/board.su ./usbCommunication/boards/drv_can.cyclo ./usbCommunication/boards/drv_can.d ./usbCommunication/boards/drv_can.o ./usbCommunication/boards/drv_can.su ./usbCommunication/boards/drv_dr16.cyclo ./usbCommunication/boards/drv_dr16.d ./usbCommunication/boards/drv_dr16.o ./usbCommunication/boards/drv_dr16.su ./usbCommunication/boards/drv_flash.cyclo ./usbCommunication/boards/drv_flash.d ./usbCommunication/boards/drv_flash.o ./usbCommunication/boards/drv_flash.su ./usbCommunication/boards/drv_imu.cyclo ./usbCommunication/boards/drv_imu.d ./usbCommunication/boards/drv_imu.o ./usbCommunication/boards/drv_imu.su ./usbCommunication/boards/drv_io.cyclo ./usbCommunication/boards/drv_io.d ./usbCommunication/boards/drv_io.o ./usbCommunication/boards/drv_io.su ./usbCommunication/boards/drv_uart.cyclo ./usbCommunication/boards/drv_uart.d ./usbCommunication/boards/drv_uart.o ./usbCommunication/boards/drv_uart.su

.PHONY: clean-usbCommunication-2f-boards


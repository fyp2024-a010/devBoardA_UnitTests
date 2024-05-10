################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../usbCommunication/protocol/protocol.c \
../usbCommunication/protocol/protocol_common.c \
../usbCommunication/protocol/protocol_interface.c \
../usbCommunication/protocol/protocol_transmit.c 

OBJS += \
./usbCommunication/protocol/protocol.o \
./usbCommunication/protocol/protocol_common.o \
./usbCommunication/protocol/protocol_interface.o \
./usbCommunication/protocol/protocol_transmit.o 

C_DEPS += \
./usbCommunication/protocol/protocol.d \
./usbCommunication/protocol/protocol_common.d \
./usbCommunication/protocol/protocol_interface.d \
./usbCommunication/protocol/protocol_transmit.d 


# Each subdirectory must supply rules for building sources it contributes
usbCommunication/protocol/%.o usbCommunication/protocol/%.su usbCommunication/protocol/%.cyclo: ../usbCommunication/protocol/%.c usbCommunication/protocol/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../usbCommunication/application -I../usbCommunication/utilities -I../usbCommunication/algorithm -I../usbCommunication/support -I../usbCommunication/boards -I../usbCommunication/controller -I../usbCommunication/devices -I../usbCommunication/modules -I../usbCommunication/object -I../usbCommunication/test -I../usbCommunication/ulog -I../usbCommunication/protocol -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-usbCommunication-2f-protocol

clean-usbCommunication-2f-protocol:
	-$(RM) ./usbCommunication/protocol/protocol.cyclo ./usbCommunication/protocol/protocol.d ./usbCommunication/protocol/protocol.o ./usbCommunication/protocol/protocol.su ./usbCommunication/protocol/protocol_common.cyclo ./usbCommunication/protocol/protocol_common.d ./usbCommunication/protocol/protocol_common.o ./usbCommunication/protocol/protocol_common.su ./usbCommunication/protocol/protocol_interface.cyclo ./usbCommunication/protocol/protocol_interface.d ./usbCommunication/protocol/protocol_interface.o ./usbCommunication/protocol/protocol_interface.su ./usbCommunication/protocol/protocol_transmit.cyclo ./usbCommunication/protocol/protocol_transmit.d ./usbCommunication/protocol/protocol_transmit.o ./usbCommunication/protocol/protocol_transmit.su

.PHONY: clean-usbCommunication-2f-protocol


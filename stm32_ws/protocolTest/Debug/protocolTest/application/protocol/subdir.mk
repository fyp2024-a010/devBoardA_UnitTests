################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../protocolTest/application/protocol/protocol.c \
../protocolTest/application/protocol/protocol_common.c \
../protocolTest/application/protocol/protocol_interface.c \
../protocolTest/application/protocol/protocol_transmit.c 

OBJS += \
./protocolTest/application/protocol/protocol.o \
./protocolTest/application/protocol/protocol_common.o \
./protocolTest/application/protocol/protocol_interface.o \
./protocolTest/application/protocol/protocol_transmit.o 

C_DEPS += \
./protocolTest/application/protocol/protocol.d \
./protocolTest/application/protocol/protocol_common.d \
./protocolTest/application/protocol/protocol_interface.d \
./protocolTest/application/protocol/protocol_transmit.d 


# Each subdirectory must supply rules for building sources it contributes
protocolTest/application/protocol/%.o protocolTest/application/protocol/%.su protocolTest/application/protocol/%.cyclo: ../protocolTest/application/protocol/%.c protocolTest/application/protocol/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../protocolTest/application -I../protocolTest/components/object -I../protocolTest/usbVCP -I../protocolTest/application/protocol -I../protocolTest/utilities -I../protocolTest/components/support -I../protocolTest/utilities/ulog -I../protocolTest/components/usbVCP -I../protocolTest/bsp -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-protocolTest-2f-application-2f-protocol

clean-protocolTest-2f-application-2f-protocol:
	-$(RM) ./protocolTest/application/protocol/protocol.cyclo ./protocolTest/application/protocol/protocol.d ./protocolTest/application/protocol/protocol.o ./protocolTest/application/protocol/protocol.su ./protocolTest/application/protocol/protocol_common.cyclo ./protocolTest/application/protocol/protocol_common.d ./protocolTest/application/protocol/protocol_common.o ./protocolTest/application/protocol/protocol_common.su ./protocolTest/application/protocol/protocol_interface.cyclo ./protocolTest/application/protocol/protocol_interface.d ./protocolTest/application/protocol/protocol_interface.o ./protocolTest/application/protocol/protocol_interface.su ./protocolTest/application/protocol/protocol_transmit.cyclo ./protocolTest/application/protocol/protocol_transmit.d ./protocolTest/application/protocol/protocol_transmit.o ./protocolTest/application/protocol/protocol_transmit.su

.PHONY: clean-protocolTest-2f-application-2f-protocol


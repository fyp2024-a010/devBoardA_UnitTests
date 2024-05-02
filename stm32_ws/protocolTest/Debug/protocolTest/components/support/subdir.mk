################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../protocolTest/components/support/fifo.c \
../protocolTest/components/support/mem_mang4.c \
../protocolTest/components/support/mf_crc.c 

OBJS += \
./protocolTest/components/support/fifo.o \
./protocolTest/components/support/mem_mang4.o \
./protocolTest/components/support/mf_crc.o 

C_DEPS += \
./protocolTest/components/support/fifo.d \
./protocolTest/components/support/mem_mang4.d \
./protocolTest/components/support/mf_crc.d 


# Each subdirectory must supply rules for building sources it contributes
protocolTest/components/support/%.o protocolTest/components/support/%.su protocolTest/components/support/%.cyclo: ../protocolTest/components/support/%.c protocolTest/components/support/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../protocolTest/application -I../protocolTest/components/object -I../protocolTest/usbVCP -I../protocolTest/application/protocol -I../protocolTest/utilities -I../protocolTest/components/support -I../protocolTest/utilities/ulog -I../protocolTest/components/usbVCP -I../protocolTest/bsp -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-protocolTest-2f-components-2f-support

clean-protocolTest-2f-components-2f-support:
	-$(RM) ./protocolTest/components/support/fifo.cyclo ./protocolTest/components/support/fifo.d ./protocolTest/components/support/fifo.o ./protocolTest/components/support/fifo.su ./protocolTest/components/support/mem_mang4.cyclo ./protocolTest/components/support/mem_mang4.d ./protocolTest/components/support/mem_mang4.o ./protocolTest/components/support/mem_mang4.su ./protocolTest/components/support/mf_crc.cyclo ./protocolTest/components/support/mf_crc.d ./protocolTest/components/support/mf_crc.o ./protocolTest/components/support/mf_crc.su

.PHONY: clean-protocolTest-2f-components-2f-support


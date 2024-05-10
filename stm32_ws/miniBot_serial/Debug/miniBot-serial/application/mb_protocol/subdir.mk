################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../miniBot-serial/application/mb_protocol/mb_protocol.c 

OBJS += \
./miniBot-serial/application/mb_protocol/mb_protocol.o 

C_DEPS += \
./miniBot-serial/application/mb_protocol/mb_protocol.d 


# Each subdirectory must supply rules for building sources it contributes
miniBot-serial/application/mb_protocol/%.o miniBot-serial/application/mb_protocol/%.su miniBot-serial/application/mb_protocol/%.cyclo: ../miniBot-serial/application/mb_protocol/%.c miniBot-serial/application/mb_protocol/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../miniBot-serial/application -I../miniBot-serial/components/object -I../miniBot-serial/components/support -I../miniBot-serial/components/utilities -I../miniBot-serial/application/mb_protocol -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-miniBot-2d-serial-2f-application-2f-mb_protocol

clean-miniBot-2d-serial-2f-application-2f-mb_protocol:
	-$(RM) ./miniBot-serial/application/mb_protocol/mb_protocol.cyclo ./miniBot-serial/application/mb_protocol/mb_protocol.d ./miniBot-serial/application/mb_protocol/mb_protocol.o ./miniBot-serial/application/mb_protocol/mb_protocol.su

.PHONY: clean-miniBot-2d-serial-2f-application-2f-mb_protocol

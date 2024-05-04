################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../miniBot-serial/application/blinky_task.c \
../miniBot-serial/application/init.c \
../miniBot-serial/application/mb_protocol_task.c \
../miniBot-serial/application/timer_task.c 

OBJS += \
./miniBot-serial/application/blinky_task.o \
./miniBot-serial/application/init.o \
./miniBot-serial/application/mb_protocol_task.o \
./miniBot-serial/application/timer_task.o 

C_DEPS += \
./miniBot-serial/application/blinky_task.d \
./miniBot-serial/application/init.d \
./miniBot-serial/application/mb_protocol_task.d \
./miniBot-serial/application/timer_task.d 


# Each subdirectory must supply rules for building sources it contributes
miniBot-serial/application/%.o miniBot-serial/application/%.su miniBot-serial/application/%.cyclo: ../miniBot-serial/application/%.c miniBot-serial/application/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../miniBot-serial/application -I../miniBot-serial/components/object -I../miniBot-serial/components/support -I../miniBot-serial/components/utilities -I../miniBot-serial/application/mb_protocol -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-miniBot-2d-serial-2f-application

clean-miniBot-2d-serial-2f-application:
	-$(RM) ./miniBot-serial/application/blinky_task.cyclo ./miniBot-serial/application/blinky_task.d ./miniBot-serial/application/blinky_task.o ./miniBot-serial/application/blinky_task.su ./miniBot-serial/application/init.cyclo ./miniBot-serial/application/init.d ./miniBot-serial/application/init.o ./miniBot-serial/application/init.su ./miniBot-serial/application/mb_protocol_task.cyclo ./miniBot-serial/application/mb_protocol_task.d ./miniBot-serial/application/mb_protocol_task.o ./miniBot-serial/application/mb_protocol_task.su ./miniBot-serial/application/timer_task.cyclo ./miniBot-serial/application/timer_task.d ./miniBot-serial/application/timer_task.o ./miniBot-serial/application/timer_task.su

.PHONY: clean-miniBot-2d-serial-2f-application


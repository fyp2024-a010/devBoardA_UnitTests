################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../motorsTest/application/blinky_task.c \
../motorsTest/application/init.c \
../motorsTest/application/motor_task.c \
../motorsTest/application/timer_task.c 

OBJS += \
./motorsTest/application/blinky_task.o \
./motorsTest/application/init.o \
./motorsTest/application/motor_task.o \
./motorsTest/application/timer_task.o 

C_DEPS += \
./motorsTest/application/blinky_task.d \
./motorsTest/application/init.d \
./motorsTest/application/motor_task.d \
./motorsTest/application/timer_task.d 


# Each subdirectory must supply rules for building sources it contributes
motorsTest/application/%.o motorsTest/application/%.su motorsTest/application/%.cyclo: ../motorsTest/application/%.c motorsTest/application/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../motorsTest/application -I../motorsTest/components/algorithm -I../motorsTest/components/controller -I../motorsTest/components/devices -I../motorsTest/components/object -I../motorsTest/components/support -I../motorsTest/utilities -I../motorsTest/utilities/ulog -I../motorsTest/bsp/boards -I../motorsTest/components/modules -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-motorsTest-2f-application

clean-motorsTest-2f-application:
	-$(RM) ./motorsTest/application/blinky_task.cyclo ./motorsTest/application/blinky_task.d ./motorsTest/application/blinky_task.o ./motorsTest/application/blinky_task.su ./motorsTest/application/init.cyclo ./motorsTest/application/init.d ./motorsTest/application/init.o ./motorsTest/application/init.su ./motorsTest/application/motor_task.cyclo ./motorsTest/application/motor_task.d ./motorsTest/application/motor_task.o ./motorsTest/application/motor_task.su ./motorsTest/application/timer_task.cyclo ./motorsTest/application/timer_task.d ./motorsTest/application/timer_task.o ./motorsTest/application/timer_task.su

.PHONY: clean-motorsTest-2f-application


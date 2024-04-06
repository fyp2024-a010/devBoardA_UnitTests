################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../usbCommunication/application/chassis_task.c \
../usbCommunication/application/communicate.c \
../usbCommunication/application/gimbal_task.c \
../usbCommunication/application/infantry_cmd.c \
../usbCommunication/application/init.c \
../usbCommunication/application/offline_check.c \
../usbCommunication/application/param.c \
../usbCommunication/application/referee_system.c \
../usbCommunication/application/shoot_task.c \
../usbCommunication/application/timer_task.c 

OBJS += \
./usbCommunication/application/chassis_task.o \
./usbCommunication/application/communicate.o \
./usbCommunication/application/gimbal_task.o \
./usbCommunication/application/infantry_cmd.o \
./usbCommunication/application/init.o \
./usbCommunication/application/offline_check.o \
./usbCommunication/application/param.o \
./usbCommunication/application/referee_system.o \
./usbCommunication/application/shoot_task.o \
./usbCommunication/application/timer_task.o 

C_DEPS += \
./usbCommunication/application/chassis_task.d \
./usbCommunication/application/communicate.d \
./usbCommunication/application/gimbal_task.d \
./usbCommunication/application/infantry_cmd.d \
./usbCommunication/application/init.d \
./usbCommunication/application/offline_check.d \
./usbCommunication/application/param.d \
./usbCommunication/application/referee_system.d \
./usbCommunication/application/shoot_task.d \
./usbCommunication/application/timer_task.d 


# Each subdirectory must supply rules for building sources it contributes
usbCommunication/application/%.o usbCommunication/application/%.su usbCommunication/application/%.cyclo: ../usbCommunication/application/%.c usbCommunication/application/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../usbCommunication/application -I../usbCommunication/utilities -I../usbCommunication/algorithm -I../usbCommunication/support -I../usbCommunication/boards -I../usbCommunication/controller -I../usbCommunication/devices -I../usbCommunication/modules -I../usbCommunication/object -I../usbCommunication/test -I../usbCommunication/ulog -I../usbCommunication/protocol -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-usbCommunication-2f-application

clean-usbCommunication-2f-application:
	-$(RM) ./usbCommunication/application/chassis_task.cyclo ./usbCommunication/application/chassis_task.d ./usbCommunication/application/chassis_task.o ./usbCommunication/application/chassis_task.su ./usbCommunication/application/communicate.cyclo ./usbCommunication/application/communicate.d ./usbCommunication/application/communicate.o ./usbCommunication/application/communicate.su ./usbCommunication/application/gimbal_task.cyclo ./usbCommunication/application/gimbal_task.d ./usbCommunication/application/gimbal_task.o ./usbCommunication/application/gimbal_task.su ./usbCommunication/application/infantry_cmd.cyclo ./usbCommunication/application/infantry_cmd.d ./usbCommunication/application/infantry_cmd.o ./usbCommunication/application/infantry_cmd.su ./usbCommunication/application/init.cyclo ./usbCommunication/application/init.d ./usbCommunication/application/init.o ./usbCommunication/application/init.su ./usbCommunication/application/offline_check.cyclo ./usbCommunication/application/offline_check.d ./usbCommunication/application/offline_check.o ./usbCommunication/application/offline_check.su ./usbCommunication/application/param.cyclo ./usbCommunication/application/param.d ./usbCommunication/application/param.o ./usbCommunication/application/param.su ./usbCommunication/application/referee_system.cyclo ./usbCommunication/application/referee_system.d ./usbCommunication/application/referee_system.o ./usbCommunication/application/referee_system.su ./usbCommunication/application/shoot_task.cyclo ./usbCommunication/application/shoot_task.d ./usbCommunication/application/shoot_task.o ./usbCommunication/application/shoot_task.su ./usbCommunication/application/timer_task.cyclo ./usbCommunication/application/timer_task.d ./usbCommunication/application/timer_task.o ./usbCommunication/application/timer_task.su

.PHONY: clean-usbCommunication-2f-application


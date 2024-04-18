################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../imuTest/application/blinky_task.c \
../imuTest/application/imuTest.c \
../imuTest/application/imu_task.c 

OBJS += \
./imuTest/application/blinky_task.o \
./imuTest/application/imuTest.o \
./imuTest/application/imu_task.o 

C_DEPS += \
./imuTest/application/blinky_task.d \
./imuTest/application/imuTest.d \
./imuTest/application/imu_task.d 


# Each subdirectory must supply rules for building sources it contributes
imuTest/application/%.o imuTest/application/%.su imuTest/application/%.cyclo: ../imuTest/application/%.c imuTest/application/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../imuTest/application -I../imuTest/components -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-imuTest-2f-application

clean-imuTest-2f-application:
	-$(RM) ./imuTest/application/blinky_task.cyclo ./imuTest/application/blinky_task.d ./imuTest/application/blinky_task.o ./imuTest/application/blinky_task.su ./imuTest/application/imuTest.cyclo ./imuTest/application/imuTest.d ./imuTest/application/imuTest.o ./imuTest/application/imuTest.su ./imuTest/application/imu_task.cyclo ./imuTest/application/imu_task.d ./imuTest/application/imu_task.o ./imuTest/application/imu_task.su

.PHONY: clean-imuTest-2f-application


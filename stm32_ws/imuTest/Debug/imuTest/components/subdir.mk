################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../imuTest/components/drv_imu.c \
../imuTest/components/madgwick_ahrs.c \
../imuTest/components/mahony_ahrs.c 

OBJS += \
./imuTest/components/drv_imu.o \
./imuTest/components/madgwick_ahrs.o \
./imuTest/components/mahony_ahrs.o 

C_DEPS += \
./imuTest/components/drv_imu.d \
./imuTest/components/madgwick_ahrs.d \
./imuTest/components/mahony_ahrs.d 


# Each subdirectory must supply rules for building sources it contributes
imuTest/components/%.o imuTest/components/%.su imuTest/components/%.cyclo: ../imuTest/components/%.c imuTest/components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../imuTest/application -I../imuTest/components -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-imuTest-2f-components

clean-imuTest-2f-components:
	-$(RM) ./imuTest/components/drv_imu.cyclo ./imuTest/components/drv_imu.d ./imuTest/components/drv_imu.o ./imuTest/components/drv_imu.su ./imuTest/components/madgwick_ahrs.cyclo ./imuTest/components/madgwick_ahrs.d ./imuTest/components/madgwick_ahrs.o ./imuTest/components/madgwick_ahrs.su ./imuTest/components/mahony_ahrs.cyclo ./imuTest/components/mahony_ahrs.d ./imuTest/components/mahony_ahrs.o ./imuTest/components/mahony_ahrs.su

.PHONY: clean-imuTest-2f-components


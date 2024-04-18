#include "imu_task.h"

struct attitude mahony_atti;

int32_t imu_update()
{
  struct ahrs_sensor mpu_sensor;
//  struct attitude mahony_atti;
  mpu_get_data(&mpu_sensor);
  mahony_ahrs_updateIMU(&mpu_sensor, &mahony_atti);
  return 0;
}

void imu_task(void const * argument){
	mpu_device_init();
	while (1)
	{
		imu_update();
		osDelay(10);
	}
}

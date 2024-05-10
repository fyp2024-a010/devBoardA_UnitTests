# MIMU Tests

-   Uses Mahony AHRS algorithm to filter MIMU data to quaternions, then Euler angles.
-   Debugger tool: Live watch expression

## Dependencies

-   blinkLED (`soft_timer.h`, RTOS)
-   `drv_imu.h`
-   `ahrs.h`
-   `mahony_ahrs.c`
-   `madgwick_ahrs.c`

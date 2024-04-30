# motorsTest
## Files Involved 
- motorCluster
- components/devices/motor
    - 
## Notes
- motor has 8192 counts per rotation of rotor. 
- the `chassis.c` uses both the `motor.c` and `controller.c` as the motors and the controllers are different objects. 
- `motor_cluster.c` is a mock `chassis.c` that only deals with wheel rpm. 
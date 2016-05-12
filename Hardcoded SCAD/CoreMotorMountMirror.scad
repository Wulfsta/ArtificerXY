use<CoreMotorMount.scad>

CoreMotorMountMirror();

module CoreMotorMountMirror()
{
    scale([-1, 1, 1])
        CoreMotorMount();
}
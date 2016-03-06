// The other Bearing Mount

use<BearingMount.scad>

BearingMountMirror();

module BearingMountMirror()
{
    scale([-1, 1, 1])
        BearingMount();
}
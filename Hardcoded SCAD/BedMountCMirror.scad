//Other side of the bed mount with two wheels

use<BedMountC.scad>

module BedMountCMirror()
{
    scale([1, -1, 1])
        BedMountC();
}
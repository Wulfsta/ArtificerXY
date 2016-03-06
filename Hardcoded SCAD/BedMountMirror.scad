//Other side of the bed mount with one wheel

use<BedMount.scad>

BedMountMirror();

module BedMountMirror()
{
    scale([1, -1, 1])
        BedMount();
}
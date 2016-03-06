// The other y-axis bar mount.

use<Y-BarMount.scad>

YMountMirror();

module YMountMirror()
{
    scale([-1, 1, 1])
        YMount();
}
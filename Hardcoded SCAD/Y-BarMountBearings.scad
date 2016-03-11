//The y-axis mount with bearing holes.

use<polyhole.scad>
use<Y-BarMount.scad>

YMountBearing();

module YMountBearing()
{
    difference()
    {
        union()
        {
            YMount();
            hull()
            {
                cylinder(h = 6, r = 2, $fn = 90);
                translate([0, 20, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([35, 20, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([55, -2, 3])
                    cube([2, 2, 6], center = true);
            }
        }
        translate([42.3/2-12.22/2+5, 15, 0])
            polyhole(6, 2.5);
        translate([42.3/2+12.22/2+0.63+5, 15, 0])
            polyhole(6, 2.5);
    }
}
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
                translate([33, 20, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([50, -2, 3])
                    cube([2, 2, 6], center = true);
            }
        }
        translate([19.05, 15, 0])
            polyhole(6, 1.5);
        translate([31.25, 15, 0])
            polyhole(6, 1.5);
    }
}
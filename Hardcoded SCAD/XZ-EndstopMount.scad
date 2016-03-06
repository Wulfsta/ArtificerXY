//X-axis endstop mount.

use<polyhole.scad>
use<trunctear.scad>

EndstopXZ();

module EndstopXZ()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([0, 1.5, 3])
                    cube([14, 3, 6], center = true);
                translate([8.5, 15, 0])
                    cylinder(h = 6, r = 3, $fn = 90);
                translate([-8.5, 15, 0])
                    cylinder(h = 6, r = 3, $fn = 90);
            }
            translate([8.5, 15, 0])
                cylinder(h = 8, r = 3, $fn = 90);
            translate([-8.5, 15, 0])
                cylinder(h = 8, r = 3, $fn = 90);
            translate([5.25, -9, 3])
                cube([3.5, 18, 6], center = true);
            translate([-5.25, -9, 3])
                cube([3.5, 18, 6], center = true);
            translate([0, -2, 3])
                cube([9, 5, 6], center = true);
        }
        translate([0, -4, 0])
            polyhole(6, 4);
        translate([8.5, 15, 0])
            cylinder(h = 8, r = 1.75, $fn = 90);
        translate([-8.5, 15, 0])
            cylinder(h = 8, r = 1.75, $fn = 90);
        translate([-10, -15, 3])
            rotate([90, 0, 90])
                trunctear(20, 1.5, $fn = 90);
    }
}
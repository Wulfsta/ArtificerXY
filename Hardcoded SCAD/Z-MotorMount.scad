// A mount for the z-axis motor

use<polyhole.scad>
use<trunctear.scad>

ZMotorMount();

module ZMotorMount()
{
    difference()
    {
        union()
        {
            translate([0, 3, 14])
                cube([42.3+12+40, 6, 28], center = true);
            hull()
            {
                translate([0, 3, 4])
                    cube([42.3+12+40, 6, 8], center = true);
                translate([0, -19, 4])
                    cube([60, 2, 8], center = true);
            }
            hull()
            {
                translate([0, 42.3/2, 4])
                    cube([42.3+12, 42.3, 8], center = true);
                translate([0, 3, 14])
                    cube([42.3+12, 6, 28], center = true);
            }
            hull()
            {
                translate([0, 42.3/2, 4])
                    cube([42.3+12, 42.3, 8], center = true);
                translate([0, 3, 4])
                    cube([42.3+12+40, 6, 8], center = true);
            }
        }
        translate([0, 42.3/2, 18])
            cube([42.3, 42.3, 20], center = true);
        translate([0, 42.3/2, 0])
            polyhole(8, 14);
        translate([-15.5, 5.65, 0])
            polyhole(8, 1.5);
        translate([-15.5, 36.65, 0])
            polyhole(8, 1.5);
        translate([15.5, 5.65, 0])
            polyhole(8, 1.5);
        translate([15.5, 36.65, 0])
            polyhole(8, 1.5);
        translate([20, -10, 0])
            polyhole(8, 2);
        translate([-20, -10, 0])
            polyhole(8, 2);
        translate([(42.3+12+40)/2-10, 0, 18])
            rotate([90, 0, 180])
                trunctear(8, 2, $fn = 90);
        translate([-(42.3+12+40)/2+10, 0, 18])
            rotate([90, 0, 180])
                trunctear(8, 2, $fn = 90);
    }
}
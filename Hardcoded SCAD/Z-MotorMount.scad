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
            translate([0, 3, 13])
                cube([90, 6, 26], center = true);
            hull()
            {
                translate([0, -13+6, 3])
                    cube([60, 26, 6], center = true);
                translate([0, 3, 3])
                    cube([90, 6, 6], center = true);
            }
            hull()
            {
                translate([0, 3, 26-3])
                    cube([60, 6, 6], center = true);
                translate([0, 3, 3])
                    cube([45, 6, 6], center = true);
                translate([0, 28+4, 26-3])
                    cube([42.3+12, 8, 6], center = true);
                translate([0, 26, 3])
                    cube([40.725, 8, 6], center = true);
            }
            hull()
            {
                translate([0, 28+4, 26+42.3/2])
                    cube([42.3+12, 8, 42.3], center = true);
                translate([0, 3, 26-3])
                    cube([60, 6, 6], center = true);
            }
        }
        translate([0, 4, 26+42.3/2])
            cube([42.3, 48, 42.3], center = true);
        translate([0, 48/2+12, 26+42.3/2])
            rotate([90, 0, 0])
                trunctear(8, 14, $fn = 90);
        translate([0, 48/2+8, 26+42.3])
            cube([2*14*(sqrt(2)-1), 8, 42.3], center = true);
        translate([31/2, 48/2+12, 26+42.3/2+31/2])
            rotate([90, 0, 0])
                trunctear(8, 1.5, $fn = 90);
        translate([-31/2, 48/2+12, 26+42.3/2+31/2])
            rotate([90, 0, 0])
                trunctear(8, 1.5, $fn = 90);
        translate([31/2, 48/2+12, 26+42.3/2-31/2])
            rotate([90, 0, 0])
                trunctear(8, 1.5, $fn = 90);
        translate([-31/2, 48/2+12, 26+42.3/2-31/2])
            rotate([90, 0, 0])
                trunctear(8, 1.5, $fn = 90);
        translate([35, 6, 20/2+6])
            rotate([90, 0, 0])
                trunctear(6, 2, $fn = 90);
        translate([-35, 6, 20/2+6])
            rotate([90, 0, 0])
                trunctear(6, 2, $fn = 90);
        translate([20, -10, 0])
            polyhole(6, 2);
        translate([-20, -10, 0])
            polyhole(6, 2);
    }
}






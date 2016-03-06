// A mount for the motors of the x and y axis.

use<polyhole.scad>

CoreMotorMount();

module CoreMotorMount()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([1, 1, 4])
                    cube([2, 2, 8], center = true);
                translate([41.3, 1, 4])
                    cube([2, 2, 8], center = true);
                translate([1, 41.3, 4])
                    cube([2, 2, 8], center = true);
                translate([40.3, 40.3, 0])
                    cylinder(h = 8, r = 2, $fn = 90);
            }
            hull()
            {
                translate([2, -18, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([58, -18, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([58, 6, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([2, 18, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([40.3, 40.3, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
            }
            hull()
            {
                translate([-18, 2, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([-18, 58, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([6, 58, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([18, 2, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([40.3, 40.3, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
            }
            hull()
            {
                translate([3, 51.15, 3])
                    cube([6, 17.7, 6], center = true);
                translate([3, 50, 16])
                    cube([6, 15.4, 20], center = true);
            }
            hull()
            {
                translate([51.15, 3, 3])
                    cube([17.7, 6, 6], center = true);
                translate([50, 3, 16])
                    cube([15.4, 6, 20], center = true);
            }
        }
        translate([21.15, 21.15, 0])
            polyhole(8, 14);
        translate([5.65, 5.65, 0])
            polyhole(8, 1.5);
        translate([5.65, 36.65, 0])
            polyhole(8, 1.5);
        translate([36.65, 5.65, 0])
            polyhole(8, 1.5);
        translate([36.65, 36.65, 0])
            polyhole(8, 1.5);
        translate([10, -10, 0])
            polyhole(6, 2);
        translate([50, -10, 0])
            polyhole(6, 2);
        translate([-10, 10, 0])
            polyhole(6, 2);
        translate([-10, 50, 0])
            polyhole(6, 2);
        translate([50, 0, 16])
            rotate([-90, 22.5, 0])
                polyhole(7, 2);
        translate([0, 50, 16])
            rotate([90, 22.5, 90])
                polyhole(7, 2);
    }
}
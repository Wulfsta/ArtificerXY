// A generic bearing mount

use<polyhole.scad>

BearingMount();

module BearingMount()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([2, 6, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([2, -18, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([48, -18, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([48, 6, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
            }
            hull()
            {
                translate([5, 1, 3])
                    cube([2, 2, 6], center = true);
                translate([-18, 2, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([-18, 33, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([5, 34, 3])
                    cube([2, 2, 6], center = true);
            }
            hull()
            {
                translate([6, 6, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([6, 20, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([33, 20, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([48, 6, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
            }
            translate([40, 3, 16])
                cube([20, 6, 20], center = true);
            translate([3, 25, 16])
                cube([6, 20, 20], center = true);
        }
        translate([10, -10, 0])
            polyhole(6, 2);
        translate([40, -10, 0])
            polyhole(6, 2);
        translate([-10, 10, 0])
            polyhole(6, 2);
        translate([-10, 25, 0])
            polyhole(6, 2);
        translate([19.05, 15, 0])
            polyhole(6, 1.5);
        translate([31.25, 15, 0])
            polyhole(6, 1.5);
        translate([0, 25, 16])
            rotate([90, 22.5, 90])
                polyhole(7, 2);
        translate([40, 0, 16])
            rotate([-90, 22.5, 0])
                polyhole(7, 2);
    }
}
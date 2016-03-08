// A carriage to mount an extruder on.

use<nutShape.scad>
use<polyhole.scad>

Carriage();

module Carriage()
{
    union()
    {
        difference()
        {
            union()
            {
                difference()
                {
                    hull()
                    {
                        translate([42, 1, 4])
                            cube([2, 2, 8], center = true);
                        translate([-42, 1, 4])
                            cube([2, 2, 8], center = true);
                        translate([-41, 60, 0])
                            cylinder(h = 8, r = 2, $fn = 90);
                        translate([-16, 84, 0])
                            cylinder(h = 8, r = 2, $fn = 90);
                        translate([16, 84, 0])
                            cylinder(h = 8, r = 2, $fn = 90);
                        translate([41, 60, 0])
                            cylinder(h = 8, r = 2, $fn = 90);
                    }
                    hull()
                    {
                        translate([28, 3, 5.5])
                            cube([2, 2, 5], center = true);
                        translate([-28, 3, 5.5])
                            cube([2, 2, 5], center = true);
                        translate([-28, 59, 5.5])
                            cube([2, 2, 5], center = true);
                        translate([28, 59, 5.5])
                            cube([2, 2, 5], center = true);
                    }
                }
                translate([29, 13, 5.75])
                    cube([28, 26, 11.5], center = true);
                translate([-29, 13, 5.75])
                    cube([28, 26, 11.5], center = true);
                translate([0, 73, 5.75])
                    cube([28, 26, 11.5], center = true);
                translate([16, 43, 4])
                    cube([2, 50, 8], center = true);
                translate([-16, 43, 4])
                    cube([2, 50, 8], center = true);
                translate([0, 31, 4])
                    cube([34, 34, 8], center = true);
                translate([0, 30, 4])
                    cube([12, 60, 8], center = true);
                translate([43-15/2, 43, 10.75/2])
                    cube([15, 60-26, 10.75], center = true);
                translate([-43+15/2, 43, 10.75/2])
                    cube([15, 60-26, 10.75], center = true);
            }
            translate([29, 13, 10.75])
                rotate([90, 0, 90])
                    polyhole(28, 7.5, true);
            translate([-29, 13, 10.75])
                rotate([90, 0, 90])
                    polyhole(28, 7.5, true);
            translate([0, 73, 10.75])
                rotate([90, 0, 90])
                    polyhole(86, 6.5, true);
            hull()
            {
                translate([0, 72.25, 10.75])
                    rotate([90, 0, 90])
                        polyhole(28, 7.5, true);
                translate([0, 73.75, 10.75])
                    rotate([90, 0, 90])
                        polyhole(28, 7.5, true);
            }
            hull()
            {
                translate([13, 31-13, 0])
                    cylinder(h = 8, r = 2, $fn = 90);
                translate([13, 31+13, 0])
                    cylinder(h = 8, r = 2, $fn = 90);
                translate([-13, 31-13, 0])
                    cylinder(h = 8, r = 2, $fn = 90);
                translate([-13, 31+13, 0])
                    cylinder(h = 8, r = 2, $fn = 90);
            }
            difference()
            {
                translate([0, 13, 10.75])
                    rotate([90, 0, 90])
                        polyhole(30, 7.5, true);
                translate([0, 13, 3])
                    cube([30, 26, 6], center = true);
            }
            translate([0, 31+25, 0])
                rotate([0, 0, -90])
                    polyhole(8, 4.5/2);
            translate([0, 31-25, 0])
                rotate([0, 0, 90])
                    polyhole(8, 4.5/2);
            translate([0, 31+25, 3.5])
                nutShape(7, 8);
            translate([0, 31-25, 3.5])
                nutShape(7, 8);
            translate([43-15/2, 43-5, 10.75])
                cube([15, 6.5, 0.63], center = true);
            translate([43-15/2, 43+5, 10.75])
                cube([15, 6.5, 0.63], center = true);
            translate([-43+15/2, 43-5, 10.75])
                cube([15, 6.5, 0.63], center = true);
            translate([-43+15/2, 43+5, 10.75])
                cube([15, 6.5, 0.63], center = true);
            translate([43-15/2, 43+12, 0])
                polyhole(11, 1.5);
            translate([43-15/2, 43-12, 0])
                polyhole(11, 1.5);
            translate([-43+15/2, 43+12, 0])
                polyhole(11, 1.5);
            translate([-43+15/2, 43-12, 0])
                polyhole(11, 1.5);
            translate([43-14, 13, 10.75])
                rotate([0, 90, 0])
                    difference()
                    {
                        cylinder(h = 4, r = 11.5, center = true, $fn = 90);
                        cylinder(h = 4, r = 9, center = true, $fn = 90);
                    }
            translate([-43+14, 13, 10.75])
                rotate([0, 90, 0])
                    difference()
                    {
                        cylinder(h = 4, r = 11.5, center = true, $fn = 90);
                        cylinder(h = 4, r = 9, center = true, $fn = 90);
                    }
            translate([0, 73, 10.75])
                rotate([0, 90, 0])
                    difference()
                    {
                        cylinder(h = 4, r = 12, center = true, $fn = 90);
                        cylinder(h = 4, r = 9.5, center = true, $fn = 90);
                    }
        }
        translate([13, 73, 3])
            cube([2, 26, 6], center = true);
        translate([-13, 73, 3])
            cube([2, 26, 6], center = true);
        translate([16, 13, 3])
            cube([2, 26, 6], center = true);
        translate([42, 13, 3])
            cube([2, 26, 6], center = true);
        translate([-16, 13, 3])
            cube([2, 26, 6], center = true);
        translate([-42, 13, 3])
            cube([2, 26, 6], center = true);
    }
}

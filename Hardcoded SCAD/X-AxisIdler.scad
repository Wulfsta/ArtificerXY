// A support for the x-axis that attaches to the y-axis.

use<polyhole.scad>
use<nutShape.scad>

XIdler();

module XIdler()
{
    union()
    {
        difference()
        {
            union()
            {
                translate([-45, 0, 0])
                    cube([90, 51, 40]);
            }
            translate([0, 14, 0])
                linear_extrude(height = 40, scale = [2, 1])
                    square([20, 18.25], center = true);
            translate([30, 14, 0])
                polyhole(40, 4);
            translate([-30, 14, 0])
                polyhole(40, 4);
            hull()
            {
                translate([-45, 35.5, 17])
                    rotate([0, 90, 0])
                        polyhole(90, 7.5, center = true);
                translate([-45, 37.5, 15])
                    rotate([0, 90, 0])
                        polyhole(90, 7.5, center = true);
            }
            difference()
            {
                translate([-45, 0, 22.5])
                    cube([90, 28, 17.5]);
                hull()
                {
                    translate([0, 0, -10])
                        rotate([-90, 0, 0])
                            cylinder(h = 28, r = 50, $fn = 90);
                    translate([43, 0, 22.5])
                        rotate([-90, 0, 0])
                            cylinder(h = 28, r = 2, $fn = 90);
                    translate([-43, 0, 22.5])
                        rotate([-90, 0, 0])
                            cylinder(h = 28, r = 2, $fn = 90);
                }
            }
            translate([-45, 28, 17])
                cube([90, 15, 25]);
            difference()
            {
                translate([-45, 43, 15])
                    cube([90, 8, 9]);
                translate([0, 41, 15])
                    rotate([0, 90, 0])
                        cylinder(h = 90, r = 10, center = true, $fn = 90);
            }
            translate([-45, 43, 23.5])
                cube([90, 8, 30]);
            translate([-17, 28, 7.45])
                cube([34, 23, 40]);
            linear_extrude(height = 7.45)
                polygon([[17, 49.6], [-17, 49.6], [-2, 28], [2, 28]]);
            translate([0, 49.5, 0])
                rotate([70, 0, 0])
                    cube([90, 25, 5], center = true);
            translate([0, 42, 24.5])
                rotate([45, 0, 0])
                    cube([90, 5, 5], center = true);
            difference()
            {
                translate([31, 37.5, 15])
                    rotate([0, 90, 0])
                        cylinder(h = 4, r = 11.5, $fn = 90, center = true);
                translate([31, 37.5, 15])
                    rotate([0, 90, 0])
                        cylinder(h = 4, r = 9, $fn = 90, center = true);
            }
            translate([31, 29.75, 19])
                cube([4, 3.5, 20], center = true);
            difference()
            {
                translate([-31, 37.5, 15])
                    rotate([0, 90, 0])
                        cylinder(h = 4, r = 11.5, $fn = 90, center = true);
                translate([-31, 37.5, 15])
                    rotate([0, 90, 0])
                        cylinder(h = 4, r = 9, $fn = 90, center = true);
            }
            translate([-31, 29.75, 19])
                cube([4, 3.5, 20], center = true);
            translate([0, 0, 35])
                rotate([-90, 0, 0])
                    polyhole(28, 1.5);
            translate([37.5, 14, 20])
                cube([15, 1, 40], center = true);
            translate([-37.5, 14, 20])
                cube([15, 1, 40], center = true);
            translate([31, 0, 0])
                cylinder(h = 40, r = 7, $fn = 90);
            translate([-31, 0, 0])
                cylinder(h = 40, r = 7, $fn = 90);
            translate([46, 3.5, 20])
                cube([30, 7, 40], center = true);
            translate([-46, 3.5, 20])
                cube([30, 7, 40], center = true);
            translate([39.5, 7, 5.5])
                rotate([-90, 0, 0])
                    polyhole(18, 1.5);
            translate([39.5, 7, 20])
                rotate([-90, 0, 0])
                    polyhole(18, 1.5);
            translate([-39.5, 7, 5.5])
                rotate([-90, 0, 0])
                    polyhole(18, 1.5);
            translate([-39.5, 7, 20])
                rotate([-90, 0, 0])
                    polyhole(18, 1.5);
            // 16mm M3 screws
            hull()
            {
                translate([39.5, 20.5, 5.5])
                    rotate([-90, 0, 0])
                        nutShape(5.5, 2.5);
                translate([45, 20.5, 5.5])
                    rotate([-90, 0, 0])
                        nutShape(5.5, 2.5);
            }
            hull()
            {
                translate([39.5, 20.5, 20])
                    rotate([-90, 0, 0])
                        nutShape(5.5, 2.5);
                translate([45, 20.5, 20])
                    rotate([-90, 0, 0])
                        nutShape(5.5, 2.5);
            }
            hull()
            {
                translate([-39.5, 20.5, 5.5])
                    rotate([-90, 0, 0])
                        nutShape(5.5, 2.5);
                translate([-45, 20.5, 5.5])
                    rotate([-90, 0, 0])
                        nutShape(5.5, 2.5);
            }
            hull()
            {
                translate([-39.5, 20.5, 20])
                    rotate([-90, 0, 0])
                        nutShape(5.5, 2.5);
                translate([-45, 20.5, 20])
                    rotate([-90, 0, 0])
                        nutShape(5.5, 2.5);
            }
        }
        translate([44, 42, 9])
            rotate([45, 0, 0])
                cube([2, 18, 4], center = true);
        translate([18, 42, 9])
            rotate([45, 0, 0])
                cube([2, 18, 4], center = true);
        translate([-44, 42, 9])
            rotate([45, 0, 0])
                cube([2, 18, 4], center = true);
        translate([-18, 42, 9])
            rotate([45, 0, 0])
                cube([2, 18, 4], center = true);
    }
}

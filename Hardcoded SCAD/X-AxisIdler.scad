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
                    cube([90, 55, 43]);
            }
            translate([0, 14, 0])
                linear_extrude(height = 43, scale = [2, 1])
                    square([20, 18.25], center = true);
            translate([30, 14, 0])
                polyhole(43, 4);
            translate([-30, 14, 0])
                polyhole(43, 4);
            hull()
            {
                translate([-45, 37.5, 20])
                    rotate([0, 90, 0])
                        polyhole(90, 9.5);
                translate([-45, 39.5, 18])
                    rotate([0, 90, 0])
                        polyhole(90, 9.5);
            }
            difference()
            {
                translate([-45, 0, 25.5])
                    cube([90, 28, 17.5]);
                hull()
                {
                    translate([0, 0, -7])
                        rotate([-90, 0, 0])
                            cylinder(h = 28, r = 50, $fn = 90);
                    translate([43, 0, 25.5])
                        rotate([-90, 0, 0])
                            cylinder(h = 28, r = 2, $fn = 90);
                    translate([-43, 0, 25.5])
                        rotate([-90, 0, 0])
                            cylinder(h = 28, r = 2, $fn = 90);
                }
            }
            translate([-45, 28, 20])
                cube([90, 19, 29]);
            difference()
            {
                translate([-45, 47, 20])
                    cube([90, 8, 9]);
                translate([0, 45, 20])
                    rotate([0, 90, 0])
                        cylinder(h = 90, r = 10, center = true, $fn = 90);
            }
            translate([-45, 43, 28])
                cube([90, 16, 30]);
            translate([-45, 45, 23.7])
                rotate([45, 0, 0])
                    cube([90, 10, 10]);
            translate([-12, 28, 8.45])
                cube([24, 30, 40]);
            linear_extrude(height = 8.45)
                polygon([[12, 54], [-12, 54], [-2, 28], [2, 28]]);
            translate([0, 53.5, 0])
                rotate([70, 0, 0])
                    cube([90, 25, 5], center = true);
            difference()
            {
                translate([28.5, 39.5, 18])
                    rotate([0, 90, 0])
                        cylinder(h = 4, r = 13.5, $fn = 90, center = true);
                translate([28.5, 39.5, 18])
                    rotate([0, 90, 0])
                        cylinder(h = 4, r = 11, $fn = 90, center = true);
            }
            translate([28.5, 30, 21])
                cube([4, 3, 20], center = true);
            difference()
            {
                translate([-28.5, 39.5, 18])
                    rotate([0, 90, 0])
                        cylinder(h = 4, r = 13.5, $fn = 90, center = true);
                translate([-28.5, 39.5, 18])
                    rotate([0, 90, 0])
                        cylinder(h = 4, r = 11, $fn = 90, center = true);
            }
            translate([-28.5, 30, 21])
                cube([4, 3, 20], center = true);
            translate([0, 0, 38])
                rotate([-90, 0, 0])
                    polyhole(28, 1.5);
            translate([37.5, 14, 22])
                cube([15, 1.25, 44], center = true);
            translate([-37.5, 14, 22])
                cube([15, 1.25, 44], center = true);
            translate([31, 0, 0])
                cylinder(h = 40, r = 7, $fn = 90);
            translate([-31, 0, 0])
                cylinder(h = 40, r = 7, $fn = 90);
            translate([46, 3.5, 22])
                cube([30, 7, 44], center = true);
            translate([-46, 3.5, 22])
                cube([30, 7, 44], center = true);
            translate([39.5, 7, 5.5])
                rotate([-90, 0, 0])
                    polyhole(18, 1.5);
            translate([39.5, 7, 23])
                rotate([-90, 0, 0])
                    polyhole(18, 1.5);
            translate([-39.5, 7, 5.5])
                rotate([-90, 0, 0])
                    polyhole(18, 1.5);
            translate([-39.5, 7, 23])
                rotate([-90, 0, 0])
                    polyhole(18, 1.5);
            // 16mm M3 screws
            hull()
            {
                translate([39.5, 20.5, 5.5])
                    rotate([-90, 0, 0])
                        nutShape(5.6, 2.5);
                translate([45, 20.5, 5.5])
                    rotate([-90, 0, 0])
                        nutShape(5.6, 2.5);
            }
            hull()
            {
                translate([39.5, 20.5, 23])
                    rotate([-90, 0, 0])
                        nutShape(5.6, 2.5);
                translate([45, 20.5, 23])
                    rotate([-90, 0, 0])
                        nutShape(5.6, 2.5);
            }
            hull()
            {
                translate([-39.5, 20.5, 5.5])
                    rotate([-90, 0, 0])
                        nutShape(5.6, 2.5);
                translate([-45, 20.5, 5.5])
                    rotate([-90, 0, 0])
                        nutShape(5.6, 2.5);
            }
            hull()
            {
                translate([-39.5, 20.5, 23])
                    rotate([-90, 0, 0])
                        nutShape(5.6, 2.5);
                translate([-45, 20.5, 23])
                    rotate([-90, 0, 0])
                        nutShape(5.6, 2.5);
            }
        }
        translate([44, 45, 11])
            rotate([45, 0, 0])
                cube([2, 18, 4], center = true);
        translate([13, 45, 11])
            rotate([45, 0, 0])
                cube([2, 18, 4], center = true);
        translate([-44, 45, 11])
            rotate([45, 0, 0])
                cube([2, 18, 4], center = true);
        translate([-13, 45, 11])
            rotate([45, 0, 0])
                cube([2, 18, 4], center = true);
    }
}
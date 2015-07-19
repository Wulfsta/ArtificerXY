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
                translate([-60, 0, 0])
                    cube([120, 51, 40]);
            }
            translate([0, 14, 0])
                linear_extrude(height = 40, scale = [2, 1])
                    square([20, 18.25], center = true);
            translate([45, 14, 0])
                polyhole(40, 4);
            translate([-45, 14, 0])
                polyhole(40, 4);
            hull()
            {
                translate([0, 35.5, 17])
                    rotate([0, 90, 0])
                        translate([0, 0, -60])
                            polyhole(120, 7.5);
                translate([0, 37.5, 15])
                    rotate([0, 90, 0])
                        translate([0, 0, -60])
                            polyhole(120, 7.5);
            }
            difference()
            {
                translate([-60, 0, 22.5])
                    cube([120, 28, 17.5]);
                hull()
                {
                    translate([0, 0, -10])
                        rotate([-90, 0, 0])
                            cylinder(h = 28, r = 50, $fn = 90);
                    translate([58, 0, 22.5])
                        rotate([-90, 0, 0])
                            cylinder(h = 28, r = 2, $fn = 90);
                    translate([-58, 0, 22.5])
                        rotate([-90, 0, 0])
                            cylinder(h = 28, r = 2, $fn = 90);
                }
            }
            translate([-60, 28, 17])
                cube([120, 15, 25]);
            difference()
            {
                translate([-60, 43, 15])
                    cube([120, 8, 9]);
                translate([0, 41, 15])
                    rotate([0, 90, 0])
                        cylinder(h = 120, r = 10, center = true, $fn = 90);
            }
            translate([-60, 43, 23.5])
                cube([120, 8, 30]);
            translate([-32, 28, 7.45])
                cube([64, 23, 40]);
            linear_extrude(height = 7.45)
                polygon([[32, 49.6], [-32, 49.6], [-20, 28], [20, 28]]);
            translate([0, 49.5, 0])
                rotate([70, 0, 0])
                    cube([120, 25, 5], center = true);
            translate([0, 42, 24.5])
                rotate([45, 0, 0])
                    cube([120, 5, 5], center = true);
            difference()
            {
                translate([46, 37.5, 15])
                    rotate([0, 90, 0])
                        cylinder(h = 4, r = 11.5, $fn = 90, center = true);
                translate([46, 37.5, 15])
                    rotate([0, 90, 0])
                        cylinder(h = 4, r = 8.5, $fn = 90, center = true);
            }
            translate([44, 28, 9])
                cube([4, 3.5, 20]);
            difference()
            {
                translate([-46, 37.5, 15])
                    rotate([0, 90, 0])
                        cylinder(h = 4, r = 11.5, $fn = 90, center = true);
                translate([-46, 37.5, 15])
                    rotate([0, 90, 0])
                        cylinder(h = 4, r = 8.5, $fn = 90, center = true);
            }
            translate([-48, 28, 9])
                cube([4, 3.5, 20]);
            translate([0, 0, 35])
                rotate([-90, 0, 0])
                    polyhole(28, 1.5);
            translate([52.5, 14, 20])
                cube([15, 1, 40], center = true);
            translate([-52.5, 14, 20])
                cube([15, 1, 40], center = true);
            translate([31, 0, 0])
                cylinder(h = 40, r = 7, $fn = 90);
            translate([-31, 0, 0])
                cylinder(h = 40, r = 7, $fn = 90);
            translate([46, 3.5, 20])
                cube([30, 7, 40], center = true);
            translate([-46, 3.5, 20])
                cube([30, 7, 40], center = true);
            translate([54.5, 7, 5.5])
                rotate([-90, 0, 0])
                    polyhole(18, 1.5);
            translate([54.5, 7, 20])
                rotate([-90, 0, 0])
                    polyhole(18, 1.5);
            translate([-54.5, 7, 5.5])
                rotate([-90, 0, 0])
                    polyhole(18, 1.5);
            translate([-54.5, 7, 20])
                rotate([-90, 0, 0])
                    polyhole(18, 1.5);
            // 16mm M3 screws
            hull()
            {
                translate([54.5, 20.5, 5.5])
                    rotate([-90, 0, 0])
                        nutShape(5.5, 2.5);
                translate([60, 20.5, 5.5])
                    rotate([-90, 0, 0])
                        nutShape(5.5, 2.5);
            }
            hull()
            {
                translate([54.5, 20.5, 20])
                    rotate([-90, 0, 0])
                        nutShape(5.5, 2.5);
                translate([60, 20.5, 20])
                    rotate([-90, 0, 0])
                        nutShape(5.5, 2.5);
            }
            hull()
            {
                translate([-54.5, 20.5, 5.5])
                    rotate([-90, 0, 0])
                        nutShape(5.5, 2.5);
                translate([-60, 20.5, 5.5])
                    rotate([-90, 0, 0])
                        nutShape(5.5, 2.5);
            }
            hull()
            {
                translate([-54.5, 20.5, 20])
                    rotate([-90, 0, 0])
                        nutShape(5.5, 2.5);
                translate([-60, 20.5, 20])
                    rotate([-90, 0, 0])
                        nutShape(5.5, 2.5);
            }
        }
        translate([59, 42, 9])
            rotate([45, 0, 0])
                cube([2, 18, 4], center = true);
        translate([33, 42, 9])
            rotate([45, 0, 0])
                cube([2, 18, 4], center = true);
        translate([-59, 42, 9])
            rotate([45, 0, 0])
                cube([2, 18, 4], center = true);
        translate([-33, 42, 9])
            rotate([45, 0, 0])
                cube([2, 18, 4], center = true);
    }
}

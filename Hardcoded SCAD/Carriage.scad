// Carriage that the extruder is mounted to.

use<polyhole.scad>
use<nutShape.scad>
use<trunctear.scad>

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
                        translate([54, 1, 4])
                            cube([2, 2, 8], center = true);
                        translate([-54, 1, 4])
                            cube([2, 2, 8], center = true);
                        translate([-53, 60, 0])
                            cylinder(h = 8, r = 2, $fn = 90);
                        translate([-16, 84, 0])
                            cylinder(h = 8, r = 2, $fn = 90);
                        translate([16, 84, 0])
                            cylinder(h = 8, r = 2, $fn = 90);
                        translate([53, 60, 0])
                            cylinder(h = 8, r = 2, $fn = 90);
                    }
                    hull()
                    {
                        translate([52, 3, 5.5])
                            cube([2, 2, 5], center = true);
                        translate([-52, 3, 5.5])
                            cube([2, 2, 5], center = true);
                        translate([-51, 59, 3])
                            cylinder(h = 5, r = 2, $fn = 90);
                        translate([-15, 82, 3])
                            cylinder(h = 5, r = 2, $fn = 90);
                        translate([15, 82, 3])
                            cylinder(h = 5, r = 2, $fn = 90);
                        translate([51, 59, 3])
                            cylinder(h = 5, r = 2, $fn = 90);
                    }
                }
                translate([41, 13, 5.75])
                    cube([28, 26, 11.5], center = true);
                translate([-41, 13, 5.75])
                    cube([28, 26, 11.5], center = true);
                translate([0, 73, 5.75])
                    cube([28, 26, 11.5], center = true);
                difference()
                {
                    linear_extrude(height = 8)
                        polygon([[-55, 60], [-18, 84], [18, 84], [55, 60]]);
                    translate([0, 60, 4])
                        cube([110, 10, 8], center = true);
                }
                translate([0, 25, 4])
                    cube([110, 2, 8], center = true);
                translate([20, 43, 4])
                    cube([44, 34, 8], center = true);
                hull()
                {
                    translate([41, 63, 4])
                        cube([2, 6, 8], center= true);
                    translate([41, 57, 9.375])
                        cube([2, 6, 18.75], center= true);
                }
                hull()
                {
                    translate([45, 43, 0])
                        cylinder(h = 8, r = 5, $fn = 90);
                    translate([-5, 43, 0])
                        cylinder(h = 8, r = 5, $fn = 90);
                }
                hull()
                {
                    translate([41, 34.5, 5.75])
                        cube([2, 17, 11.5], center = true);
                    translate([54, 34.5, 5.75])
                        cube([2, 17, 11.5], center = true);
                    translate([56, 38, 0])
                        cylinder(h = 11.5, r = 4, $fn = 90);
                }
                difference()
                {
                    hull()
                    {
                        translate([41, 51.5, 9.375])
                            cube([2, 17, 18.75], center = true);
                        translate([54, 51.5, 9.375])
                            cube([2, 17, 18.75], center = true);
                        translate([56, 48, 0])
                            cylinder(h = 18.75, r = 4, $fn = 90);
                    }
                    translate([55, 43, 21.5])
                        cube([20, 6, 20], center = true);
                }
                hull()
                {
                    translate([56, 38, 0])
                        cylinder(h = 11.5, r = 4, $fn = 90);
                    translate([56, 48, 0])
                        cylinder(h = 11.5, r = 4, $fn = 90);
                }
                difference()
                {
                    hull()
                    {
                        translate([56, 38, 0])
                            cylinder(h = 18.75, r = 4, $fn = 90);
                        translate([56, 48, 0])
                            cylinder(h = 18.75, r = 4, $fn = 90);
                    }
                    translate([55, 36, 21.5])
                        cube([20, 20, 20], center = true);
                }
                hull()
                {
                    translate([50, 41, 5.75])
                        cube([20, 2, 11.5], center = true);
                    translate([50, 47, 9.375])
                        cube([20, 2, 18.75], center = true);
                }
                translate([-47.5, 43, 9.375])
                    cube([15, 34, 18.75], center = true);
                hull()
                {
                    translate([-41, 63, 4])
                        cube([2, 6, 8], center= true);
                    translate([-41, 57, 9.375])
                        cube([2, 6, 18.75], center= true);
                }
            }
            translate([-55, 13, 10.75])
                rotate([90, 0, 90])
                    polyhole(28, 7.5);
            translate([27, 13, 10.75])
                rotate([90, 0, 90])
                    polyhole(28, 7.5);
            translate([-55, 73, 10.75])
                rotate([90, 0, 90])
                    polyhole(110, 6);
            hull()
            {
                translate([-14, 72.25, 10.75])
                    rotate([90, 0, 90])
                        polyhole(28, 7.5);
                translate([-14, 73.75, 10.75])
                    rotate([90, 0, 90])
                        polyhole(28, 7.5);
            }
            translate([41, 13, 10.75])
                rotate([0, 90, 0])
                    difference()
                    {
                        cylinder(h = 4, r = 11.5, center = true, $fn = 90);
                        cylinder(h = 4, r = 9, center = true, $fn = 90);
                    }
            translate([-41, 13, 10.75])
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
            hull()
            {
                translate([2, 30, 0])
                    cylinder(h = 8, r = 2, $fn = 90);
                translate([38, 30, 0])
                    cylinder(h = 8, r = 2, $fn = 90);
                translate([38, 56, 0])
                    cylinder(h = 8, r = 2, $fn = 90);
                translate([2, 56, 0])
                    cylinder(h = 8, r = 2, $fn = 90);
            }
            translate([45, 43, 0])
                polyhole(20, 2.25);
            translate([-5, 43, 0])
                polyhole(8, 2.25);
            translate([45, 43, 4.8])
                nutShape(7, 3.2);
            translate([-5, 43, 4.8])
                nutShape(7, 3.2);
            hull()
            {
                translate([45, 43, 8])
                    cylinder(h = 20, r = 5, $fn = 90);
                translate([-5, 43, 8])
                    cylinder(h = 20, r = 5, $fn = 90);
            }
            hull()
            {
                translate([47, 32, 3])
                    cylinder(h = 11.5, r = 5, $fn = 90);
                translate([52.5, 37, 8.75])
                    cube([1, 2, 11.5], center = true);
            }
            translate([57.5, 37, 8.75])
                cube([10, 2, 11.5], center = true);
            hull()
            {
                translate([47, 54, 10.75])
                    cylinder(h = 11.5, r = 5, $fn = 90);
                translate([52.5, 49, 16.5])
                    cube([1, 2, 11.5], center = true);
            }
            translate([57.5, 49, 16.5])
                cube([10, 2, 11.5], center = true);
            translate([-49, 31, 3])
                cylinder(h = 20, r = 4, $fn = 90);
            translate([-40, 31, 13])
                cube([15, 2, 20], center = true);
            translate([-49, 55, 10.75])
                cylinder(h = 20, r = 4, $fn = 90);
            translate([-40, 55, 20.75])
                cube([15, 2, 20], center = true);
            translate([-47.5, 37, 14.25])
                cube([15, 2, 7], center = true);
            translate([-47.5, 49, 7.25])
                cube([15, 2, 7], center = true);
            translate([-55, 46, 14.625])
                rotate([90, 0, 90])
                    trunctear(15, 1.5, 90);
            translate([-55, 40, 6.875])
                rotate([90, 0, 90])
                    trunctear(15, 1.5, 90);
            translate([-42.4, 46, 14.625])
                rotate([90, 0, 90])
                    nutShape(5.5, 2.4);
            translate([-42.4, 40, 6.875])
                rotate([90, 0, 90])
                    nutShape(5.5, 2.4);
            hull()
            {
                translate([-47.5, 26, 21.5])
                    cube([15, 10, 20], center = true);
                translate([-47.5, 26, 28.75])
                    cube([15, 18, 20], center = true);
            }
        }
        translate([54, 13, 4])
            cube([2, 26, 3], center = true);
        translate([28, 13, 4])
            cube([2, 26, 3], center = true);
        translate([-54, 13, 4])
            cube([2, 26, 3], center = true);
        translate([-28, 13, 4])
            cube([2, 26, 3], center = true);
        translate([13, 73, 4])
            cube([2, 26, 3], center = true);
        translate([-13, 73, 4])
            cube([2, 26, 3], center = true);
        translate([47, 32, 0])
            cylinder(h = 11.5, r = 3.62, $fn = 90);
        translate([47, 54, 0])
            cylinder(h = 18.75, r = 3.62, $fn = 90);
        translate([-49, 31, 0])
                cylinder(h = 11.5, r = 2.62, $fn = 90);
        translate([-49, 55, 0])
                cylinder(h = 18.75, r = 2.62, $fn = 90);
    }
}
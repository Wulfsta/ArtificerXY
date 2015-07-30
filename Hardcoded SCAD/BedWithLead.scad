// A printed part that attaches to a side of the bed and has a lead screw
// attachment.

use<polyhole.scad>

BedWithLead();

module BedWithLead()
{
    difference()
    {
        union()
        {
            translate([10, 0, 0])
                difference()
                {
                    cylinder(h = 24, r = 10, $fn = 90);
                    translate([-8.75, 0, 12])
                        cube([3, 1.5, 24], center = true);
                }
            hull()
            {
                linear_extrude(height = 6)
                    polygon([[-5, 0.75], [0, 0.75], [0, 0.76]]);
                translate([1, 73, 0])
                    cylinder(h = 6, r = 3, $fn = 90);
                translate([19, 73, 0])
                    cylinder(h = 6, r = 3, $fn = 90);
                linear_extrude(height = 6)
                    polygon([[25, 0.75], [20, 0.75], [25, 0.76]]);
            }
            difference()
            {
                difference()
                {
                    translate([10, 0, 12])
                        rotate_extrude($fn = 90)
                            translate([-10, 0, 0])
                                    scale([10, 24])
                                        circle(0.5, $fn = 90);
                    translate([10, 0, 0])
                        cylinder(h = 24, r = 10, $n = 90);
                }
                translate([10, -7.25, 12])
                    cube([30, 16, 24], center = true);
            }
            difference()
            {
                translate([10, 0, 0])
                    cylinder(h = 12, r = 15, $fn = 90);
                translate([10, -7.25, 6])
                    cube([30, 16, 12], center = true);
            }
            difference()
            {
                hull()
                {
                    difference()
                    {
                        translate([10, 67, 6])
                            rotate([0, 90, 0])
                                cylinder(h = 12, r = 9, $fn = 90, center = true);
                        translate([10, 67, -10])
                            cube([20, 20, 20], center = true);
                    }
                    translate([10, 20, 22])
                        rotate([0, 90, 0])
                            cylinder(h = 12, r = 2, $fn = 90, center = true);
                    translate([10, 2.75, 22])
                        rotate([0, 90, 0])
                            cylinder(h = 12, r = 2, $fn = 90, center = true);
                    translate([10, 2.75, 6])
                        rotate([0, 90, 0])
                            cylinder(h = 12, r = 2, $fn = 90, center = true);
                }
                translate([19, 45, 21])
                    rotate([0, -4, 2])
                        cube([10, 90, 30], center = true);
                translate([1, 45, 21])
                    rotate([0, 4, -2])
                        cube([10, 90, 30], center = true);
            }
            translate([42, 0, 0])
                scale([26, 40, 6])
                    cylinder(h = 1, r = 0.5, $fn = 90);
            difference()
            {
                hull()
                {
                    translate([47.75, 10.375, 6])
                        rotate([90, 0, 0])
                            cylinder(h = 19.25, r = 6, $fn = 90, center = true);
                    translate([10, 10.375, 1])
                        rotate([90, 0, 0])
                            cylinder(h = 19.25, r = 1, $fn = 90, center = true);
                    translate([10, 10.375, 23])
                        rotate([90, 0, ])
                            cylinder(h = 19.25, r = 1, $fn = 90, center = true);
                    translate([25, 10.375, 23])
                        rotate([90, 0, 2])
                            cylinder(h = 19.25, r = 1, $fn = 90, center = true);
                }
                difference()
                {
                    translate([42, 0, 6])
                        cylinder(h = 18, r = 13, $fn = 90);
                    translate([29, 8.5, 6])
                        cube([26, 6.5, 18]);
                }
                difference()
                {
                    translate([42, 0, 0])
                        cylinder(h = 24, r = 30, $fn = 90);
                    translate([42, 0, 0])
                        scale([26, 40, 24])
                            cylinder(h = 1, r = 0.5, $fn = 90);
                    translate([0, -30, 0])
                        cube([42, 60, 24]);
                }
                translate([42, 0, 6])
                    cube([20, 8.5, 18]);
            }
        }
        translate([10, 0, 0])
            polyhole(24, 7.5);
        translate([29, -20, 0])
            cube([26, 11.5, 6]);
        translate([42, 0, 0])
            polyhole(6, 4);
        translate([42 - 9 * sin(60), 9 * cos(60), 0])
            polyhole(6, 2);
        translate([42 - 9 * sin(60), - 9 * cos(60), 0])
            polyhole(6, 2);
        translate([42 + 9 * sin(60), 9 * cos(60), 0])
            polyhole(6, 2);
        translate([42 + 9 * sin(60), - 9 * cos(60), 0])
            polyhole(6, 2);
        difference()
        {
            translate([-5, 0.75, 0])
                cube([1, 1, 24]);
            translate([-4, 1.75, 0])
                cylinder(h = 24, r = 1, $fn = 90);
        }
        translate([10, 0, 4.5])
            difference()
            {
                cylinder(h = 4, r = 12, $fn = 90);
                cylinder(h = 4, r = 10, $fn = 90);
            }
        translate([10, 0, 15.5])
            difference()
            {
                cylinder(h = 4, r = 12, $fn = 90);
                cylinder(h = 4, r = 10, $fn = 90);
            }
        translate([0.5, 25, 0])
            polyhole(6, 1.5);
        translate([19.5, 25, 0])
            polyhole(6, 1.5);
        translate([2, 71, 0])
            polyhole(6, 1.5);
        translate([18, 71, 0])
            polyhole(6, 1.5);
    }
}
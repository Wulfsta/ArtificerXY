// A printed part that attaches to a side of the bed.

use<polyhole.scad>

BedNoLead();

module BedNoLead()
{
    union()
    {
        difference()
        {
            union()
            {
                translate([10, 0, 0])
                    difference()
                    {
                        cylinder(h = 26, r = 10, $fn = 90);
                        translate([-8.75, 0, 13])
                            cube([3, 1.5, 26], center = true);
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
                        translate([10, 0, 13])
                            rotate_extrude($fn = 90)
                                translate([-10, 0, 0])
                                        scale([10, 26])
                                            circle(0.5, $fn = 90);
                        translate([10, 0, 0])
                            cylinder(h = 26, r = 10, $n = 90);
                    }
                    translate([10, -7.25, 13])
                        cube([30, 16, 26], center = true);
                }
                difference()
                {
                    translate([10, 0, 0])
                        cylinder(h = 13, r = 15, $fn = 90);
                    translate([10, -7.25, 6.5])
                        cube([30, 16, 13], center = true);
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
                        translate([10, 20, 24])
                            rotate([0, 90, 0])
                                cylinder(h = 12, r = 2, $fn = 90, center = true);
                        translate([10, 2.75, 24])
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
            }
            translate([10, 0, 0])
                polyhole(26, 7.5);
            translate([29, -20, 0])
                cube([26, 11.5, 6]);
            difference()
            {
                translate([-5, 0.75, 0])
                    cube([1, 1, 26]);
                translate([-4, 1.75, 0])
                    cylinder(h = 26, r = 1, $fn = 90);
            }
            translate([10, 0, 5.5])
                difference()
                {
                    cylinder(h = 4, r = 12, $fn = 90);
                    cylinder(h = 4, r = 10, $fn = 90);
                }
            translate([10, 0, 16.5])
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
        difference()
        {
            translate([10, 5.75, 1])
                cube([15, 10, 2], center = true);
            translate([10, 0.75, 0])
                scale([15, 8, 2])
                    cylinder(h = 1, r = .5, $fn = 90);
        }
    }
}

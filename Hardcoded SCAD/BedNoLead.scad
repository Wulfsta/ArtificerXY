// A printed part that attaches to a side of the bed.

use<polyhole.scad>

BedNoLead();

module BedNoLead()
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
                    translate([10, 10, 22])
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
        }
        translate([10, 0, 0])
            polyhole(24, 7.5);
        difference()
        {
            translate([-5, 0.75, 0])
                cube([1, 1, 24]);
            translate([-4, 1.75, 0])
                cylinder(h = 24, r = 1, $fn = 90);
        }
        difference()
        {
            translate([24, 0.75, 0])
                cube([1, 1, 24]);
            translate([24, 1.75, 0])
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

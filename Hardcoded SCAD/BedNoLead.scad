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
                hull()
                {
                    translate([5, 6.5, 3])
                        cube([2, 2, 6], center = true);
                    translate([-2, 8.5, 0])
                        cylinder(h = 6, r = 3, $fn = 90);
                    translate([1, 73, 0])
                        cylinder(h = 6, r = 3, $fn = 90);
                    translate([19, 73, 0])
                        cylinder(h = 6, r = 3, $fn = 90);
                    translate([22, 8.5, 0])
                        cylinder(h = 6, r = 3, $fn = 90);
                    translate([15, 6.5, 3])
                        cube([2, 2, 6], center = true);
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
                        translate([10, 20, 26])
                            rotate([0, 90, 0])
                                cylinder(h = 12, r = 2, $fn = 90, center = true);
                        translate([10, 2, 26])
                            rotate([0, 90, 0])
                                cylinder(h = 12, r = 2, $fn = 90, center = true);
                        translate([10, 2, 6])
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
                hull()
                {
                    translate([10, 0, 0])
                        cylinder(h = 28, r = 10, $fn = 90);
                    translate([1, 10, 0])
                        cylinder(h = 28, r = 1, $fn = 90);
                    translate([19, 10, 0])
                        cylinder(h = 28, r = 1, $fn = 90);
                    translate([10, 19, 14])
                        cube([8.5, 2, 28], center = true);
                }
            }
            translate([10, 0, 0])
                polyhole(28, 7.5);
            translate([10, -14, 14])
                rotate([0, 0, 45])
                    cube([23, 23, 28], center = true);
            translate([0, 25, 0])
                polyhole(6, 1.5);
            translate([20, 25, 0])
                polyhole(6, 1.5);
            translate([2, 71, 0])
                polyhole(6, 1.5);
            translate([18, 71, 0])
                polyhole(6, 1.5);
        }
        translate([10, 9.5, 1])
            cube([15, 8, 2], center = true);
        translate([10, 9.5, 27])
            cube([15, 8, 2], center = true);
    }
}

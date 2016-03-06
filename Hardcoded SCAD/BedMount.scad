// A corner mount for the bed, which uses one V wheel. Uses 40mm m5 bolts to mount the wheels

use<polyhole.scad>

BedMount();

module BedMount()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([10, 10, 3])
                    cube([20, 20, 6], center = true);
                translate([68, 2, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([68, 18, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([2, 68, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([18, 68, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
            }
            hull()
            {
                linear_extrude(height = 8)
                    polygon([[0, 0], [20, 0], [0, 20]]);
                linear_extrude(height = 6)
                    polygon([[0, 0], [50, 0], [50, 20], [20, 50], [0, 50]]);
            }
            hull()
            {
                hull()
                {
                    dist = 5; //distance from edge of bed to v slot extrusion
                    translate([-dist, -6, 1])
                        cube([(10-5.40)*2, 6, 2], center = true);
                    translate([-dist, -6, 4])
                        rotate([0, 90, 0])
                            cylinder(h = (10-5.40)*2, r = 4, $fn = 90, center = true);
                    translate([-dist, -6, 7])
                        cube([(10-5.40)*2, 6, 2], center = true);
                }
                linear_extrude(height = 8)
                    polygon([[0, -12], [20, -12], [20, 0], [0, 0]]);
            }
        }
        translate([20, -6, 4])
            rotate([90, 0, -90])
                polyhole(30, 2.5);
        translate([60, 10, 0])
            polyhole(6, 2);
        translate([10, 60, 0])
            polyhole(6, 2);
        translate([5, 5, 6])
            cylinder(h = 2, r = 3.5, $fn = 90);
        translate([5, 5, 0])
            polyhole(6, 1.5);
    }
}
// A piece that holds one z-axis motor, one leadscrew, and one rod.

use<polyhole.scad>

ZBottomMotor();

module ZBottomMotor()
{
    difference()
    {
        union()
        {
            linear_extrude(height = 6)
                polygon([[-39, -20], [22.15, -20], [46.15, 0], [46.15, 6], [25.15, 78], [-39, 78], [-59, 6], [-59, 0]]);
            translate([-6.425, 3, 13])
                cube([105.15, 6, 26], center = true);
            translate([0, 32, 37])
                cube([44, 8, 62], center = true);
            hull()
            {
                translate([-23.15, 32, 37])
                    cube([4, 8, 62], center = true);
                translate([-23.15, 3, 16])
                    cube([4, 6, 20], center = true);
            }
            hull()
            {
                translate([23.15, 32, 37])
                    cube([4, 8, 62], center = true);
                translate([23.15, 3, 16])
                    cube([4, 6, 20], center = true);
            }
            translate([0, 74, 28])
                cube([42.3, 8, 56], center = true);
            hull()
            {
                translate([-23.15, 74, 28])
                    cube([4, 8, 56], center = true);
                translate([-23.15, 60, 27])
                    cube([4, 6, 54], center = true);
            }
            hull()
            {
                translate([23.15, 74, 28])
                    cube([4, 8, 56], center = true);
                translate([23.15, 40, 16])
                    cube([4, 8, 20], center = true);
            }
            translate([-18.15, 39, 16])
                cube([6, 78, 20], center = true);
            translate([18.15, 39, 16])
                cube([6, 78, 20], center = true);
            hull()
            {
                translate([-32, 68, 24.15])
                    cube([14, 20, 46], center = true);
                translate([-32, 58, 47.15])
                    rotate([-90, 0, 0])
                        cylinder(h = 20, r = 7, $fn = 90);
            }
            hull()
            {
                translate([-22.15, 54, 27])
                    cube([2, 6, 54], center = true);
                translate([-38, 54, 27])
                    cube([2, 6, 54], center = true);
                translate([-22.15, 3, 13])
                    cube([2, 6, 26], center = true);
                translate([-38, 3, 13])
                    cube([2, 6, 26], center = true);
            }
            hull()
            {
                translate([-22.15, 66, 21])
                    cube([2, 24, 42], center = true);
                translate([-38, 66, 21])
                    cube([2, 24, 42], center = true);
            }
            hull()
            {
                translate([-32, 68, 53.15])
                    cube([8, 20, 2], center = true);
                translate([-32, 68, 60])
                    cube([8, 10, 2], center = true);
            }
        }
        translate([15.5, 28, 31.65])
            rotate([-90, 0, 0])
                polyhole(8, 1.5);
        translate([-15.5, 28, 31.65])
            rotate([-90, 0, 0])
                polyhole(8, 1.5);
        translate([15.5, 28, 62.65])
            rotate([-90, 0, 0])
                polyhole(8, 1.5);
        translate([-15.5, 28, 62.65])
            rotate([-90, 0, 0])
                polyhole(8, 1.5);
        translate([0, 28, 47.15])
            rotate([-90, 0, 0])
                polyhole(8, 14);
        translate([0, 32, 67])
            cube([20, 8, 40], center = true);
        translate([0, 70, 47.15])
            rotate([-90, 0, 0])
                polyhole(8, 4);
        translate([0, 72, 47.15])
            rotate([-90, 0, 0])
                polyhole(6, 8.5);
        hull()
        {
            translate([0, 70, 47.15])
                rotate([-90, 0, 0])
                    polyhole(8, 4);
            translate([0, 74, 57])
                cube([13, 8, 2], center= true);
        }
        hull()
        {
            translate([-32, 58, 47.15])
                rotate([-90, 0, 0])
                    polyhole(20, 4);
            translate([-32, 68, 52])
                cube([1.5, 20, 2], center = true);
        }
        translate([-32, 68, 56])
            cube([1.5, 20, 16], center = true);
        translate([-36, 68, 57])
            rotate([90, 0, 90])
                polyhole(8, 1.5);
        translate([-48, 0, 16])
            rotate([-90, 22.5, 0])
                polyhole(7, 2);
        translate([36.15, 0, 16])
            rotate([-90, 22.5, 0])
                polyhole(7, 2);
        translate([-34, -10, 0])
            polyhole(7, 2);
        translate([18.15, -10, 0])
            polyhole(7, 2);
    }
}

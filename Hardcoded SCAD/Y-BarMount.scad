// A mount for the y-axis bar.

use<polyhole.scad>

YMount();

module YMount()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([-18, -18, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([-18, -2, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([73, -2, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([73, -18, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
            }
            hull()
            {
                translate([-18, -18, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([-2, -18, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([-2, 33, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
                translate([-18, 33, 0])
                    cylinder(h = 6, r = 2, $fn = 90);
            }
            linear_extrude(height = 6)
                polygon([[-5, -5], [50, 0], [0, 22]]);
            translate([51.25, -10, 19])
                cube([14, 20, 38], center = true);
        }
        translate([51.25, 0, 13.5])
            rotate([90, 0, 0])
                polyhole(20, 4);
        difference()
        {
            translate([58.25, -10, 26.5])
                cube([6, 20, 26], center = true);
            translate([51.25, 0, 13.5])
                rotate([90, 0, 0])
                    cylinder(h = 20, r = 7, $fn = 90);
        }
        difference()
        {
            translate([44.25, -10, 26.5])
                cube([6, 20, 26], center = true);
            translate([51.25, 0, 13.5])
                rotate([90, 0, 0])
                    cylinder(h = 20, r = 7, $fn = 90);
        }
        difference()
        {
            translate([51.25, -10, 32])
                cube([14, 20, 26], center = true);
            hull()
            {
                translate([51.25, -10, 18])
                    cube([14, 20, 2], center = true);
                translate([51.25, -10, 26])
                    cube([14, 8, 2], center = true);
            }
        }
        translate([51.25, -10, 26.5])
                cube([1.5, 20, 26], center = true);
        translate([65, -10, 0])
            polyhole(6, 2);
        translate([37.5, -10, 0])
            polyhole(6, 2);
        translate([0, -10, 0])
            polyhole(6, 2);
        translate([-10, 0, 0])
            polyhole(6, 2);
        translate([-10, 25, 0])
            polyhole(6, 2);
        translate([46, -10, 23])
            rotate([90, 0, 90])
                polyhole(14, 1.5);
    }
}

// A mount for the y-axis bar.

use<polyhole.scad>
use<trunctear.scad>

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
                cube([16, 20, 38], center = true);
        }
        hull()
        {
            translate([51.25, 0, 15.5])
                rotate([90, 0, 0])
                    polyhole(20, 5);
            translate([51.25, -10, 22])
                cube([1.5, 20, 2], center = true);
        }
        hull()
        {
            translate([61, -10, 38])
                cube([12, 20, 1], center = true);
            translate([61, -10, 25])
                cube([12, 20, 1], center = true);
            translate([60.25, -10, 19])
                cube([2, 20, 1], center = true);
        }
        hull()
        {
            translate([41.5, -10, 38])
                cube([12, 20, 1], center = true);
            translate([41.5, -10, 25])
                cube([12, 20, 1], center = true);
            translate([42.25, -10, 19])
                cube([2, 20, 1], center = true);
        }
        difference()
        {
            translate([51.25, -10, 38])
                cube([16, 20, 26], center = true);
            hull()
            {
                translate([51.25, -10, 24])
                    cube([14, 20, 2], center = true);
                translate([51.25, -10, 32])
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
        translate([46, -10, 29])
            rotate([90, 0, 90])
                trunctear(14, 1.5, 90);
    }
}

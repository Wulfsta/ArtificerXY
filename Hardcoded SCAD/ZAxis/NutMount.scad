// used to mount the lead screw nut

use<../polyhole.scad>
use<../trunctear.scad>
use<../nutShape.scad>

NutMount();

module NutMount()
{
    difference()
    {
        union()
        {
            hull()
            {
                cylinder(h = 25, r = 30/2, $fn = 90);
                translate([(30/2*sqrt(2)+15/2+2)-2, -15/2-2, 0])
                    cylinder(h = 25, r = 2, $fn = 90);
                translate([-(30/2*sqrt(2)+15/2+2)+2, -15/2-2, 0])
                    cylinder(h = 25, r = 2, $fn = 90);
                translate([30/2-2, -20-15/2, 0])
                    cylinder(h = 25, r = 2, $fn = 90);
                translate([-30/2+2, -20-15/2, 0])
                    cylinder(h = 25, r = 2, $fn = 90);
            }
        }
        rotate([0, 0, 0])
            polyhole(25, 15/2);
        translate([22/2, 0, 0])
            polyhole(25, 2);
        translate([-22/2, 0, 0])
            polyhole(25, 2);
        translate([0, -10-15/2-2, 10+5])
            cube([2*(30/2*sqrt(2)+13), 20, 20], center = true);
        translate([30/2-5, -10-15/2-2, 0])
            polyhole(5, 2);
        translate([-30/2+5, -10-15/2-2, 0])
            polyhole(5, 2);
        translate([(30/2*sqrt(2)+15/2+2-10), -15/2-2, 15])
            rotate([90, 0, 180])
                trunctear(44, 2, $fn = 90);
        translate([-(30/2*sqrt(2)+15/2+2-10), -15/2-2, 15])
            rotate([90, 0, 180])
                trunctear(44, 2, $fn = 90);
        translate([(30/2*sqrt(2)+15/2+2-10), -15/2-2+5, 15])
            rotate([90, 0, 180])
                trunctear(44, 9/2, $fn = 90);
        translate([-(30/2*sqrt(2)+15/2+2-10), -15/2-2+5, 15])
            rotate([90, 0, 180])
                trunctear(44, 9/2, $fn = 90);
        translate([22/2, 0, 25-3.2])
            rotate([0, 0, 30])
                nutShape(7, 3.2);
        translate([-22/2, 0, 25-3.2])
            rotate([0, 0, 30])
                nutShape(7, 3.2);
        translate([0, 0, 25])
            cube([22, 7/sqrt(3), 2*3.2], center = true);
    }
}
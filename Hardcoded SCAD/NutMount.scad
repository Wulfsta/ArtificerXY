// used to mount the lead screw nut

use<polyhole.scad>
use<trunctear.scad>
use<nutShape.scad>

NutMount();

module NutMount()
{
    difference()
    {
        union()
        {
            hull()
            {
                cylinder(h = 25, r = 22, $fn = 90);
                translate([(22*sqrt(2)+13)-2, -11-2, 0])
                    cylinder(h = 25, r = 2, $fn = 90);
                translate([-(22*sqrt(2)+13)+2, -11-2, 0])
                    cylinder(h = 25, r = 2, $fn = 90);
                translate([22-2, -20-11, 0])
                    cylinder(h = 25, r = 2, $fn = 90);
                translate([-22+2, -20-11, 0])
                    cylinder(h = 25, r = 2, $fn = 90);
            }
        }
        rotate([0, 0, 45/11])
            polyhole(25, 11);
        translate([31/2, 0, 0])
            polyhole(25, 2.5);
        translate([-31/2, 0, 0])
            polyhole(25, 2.5);
        translate([0, -10-11-2, 10+5])
            cube([2*(22*sqrt(2)+13), 20, 20], center = true);
        translate([22-5, -10-11-2, 0])
            polyhole(5, 2);
        translate([-22+5, -10-11-2, 0])
            polyhole(5, 2);
        translate([(22*sqrt(2)+13-10), -11-2, 15])
            rotate([90, 0, 180])
                trunctear(44, 2, $fn = 90);
        translate([-(22*sqrt(2)+13-10), -11-2, 15])
            rotate([90, 0, 180])
                trunctear(44, 2, $fn = 90);
        translate([(22*sqrt(2)+13-10), -11-2+5, 15])
            rotate([90, 0, 180])
                trunctear(44, 9/2, $fn = 90);
        translate([-(22*sqrt(2)+13-10), -11-2+5, 15])
            rotate([90, 0, 180])
                trunctear(44, 9/2, $fn = 90);
        translate([31/2, 0, 20])
            rotate([0, 0, 30])
                nutShape(8, 5);
        translate([-31/2, 0, 20])
            rotate([0, 0, 30])
                nutShape(8, 5);
    }
}
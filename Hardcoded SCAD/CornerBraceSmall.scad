// Corner brace

use<polyhole.scad>

CornerBraceSmall();

module CornerBraceSmall()
{
    difference()
    {
        hull()
        {
            translate([-20+2, -20+2, 0])
                cylinder(h = 6, r = 2, $fn = 90);
            translate([-20+2, 40-2, 0])
                cylinder(h = 6, r = 2, $fn = 90);
            translate([20-2, -20+2, 0])
                cylinder(h = 6, r = 2, $fn = 90);
            translate([0, 40-2, 0])
                cylinder(h = 6, r = 2, $fn = 90);
            translate([20-2, 0, 0])
                cylinder(h = 6, r = 2, $fn = 90);
        }
        translate([-10, -10, 0])
            polyhole(6, 2);
        translate([-10, 10, 0])
            polyhole(6, 2);
        translate([-10, 30, 0])
            polyhole(6, 2);
        translate([10, -10, 0])
            polyhole(6, 2);
    }
}
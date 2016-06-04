// Clamp used for y rods
// Uses 35mm m4 bolts

use<../polyhole.scad>

Clamp();

module Clamp()
{
    difference()
    {
        hull()
        {
            translate([-18, -13, 0])
                cylinder(h = 7+4.5, r = 2, $fn = 90);
            translate([-4, -13, 0])
                cylinder(h = 7+4.5, r = 2, $fn = 90);
            translate([-18, 13, 0])
                cylinder(h = 7+4.5, r = 2, $fn = 90);
            translate([-4, 13, 0])
                cylinder(h = 7+4.5, r = 2, $fn = 90);
        }
        translate([-10, 10, 0])
            polyhole(7+4.5, 2);
        translate([-10, -10, 0])
            polyhole(7+4.5, 2);
        translate([-2, 0, 7+5])
            rotate([0, -90, 0])
                cylinder(h = 20, r = 5, $fn = 90);
    }
}
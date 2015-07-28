// A small shape used to tighten one belt on the carriage.

use<polyhole.scad>

BeltTensioner();

module BeltTensioner()
{
    difference()
    {
        rotate([0, 90, 0])
            cylinder(h = 7.75, r = 9, center = true, $fn = 90);
        translate([0, 0, -5])
            cube([30, 30, 10], center = true);
        difference()
        {
            rotate([0, 90, 0])
                cylinder(h = 6, r = 9, center = true, $fn = 90);
            rotate([0, 90, 0])
                cylinder(h = 6, r = 8, center = true, $fn = 90);
        }
        polyhole(6, 1.5);
    }
}
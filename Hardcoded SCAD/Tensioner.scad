// Uses 50mm m4 tap bolts

use<polyhole.scad>
use<trunctear.scad>
use<nutShape.scad>

Tensioner();

module Tensioner()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([0, 9+(3.2+5)/2, (5+7+2)/2])
                    cube([9+4+4, 3.2+5, 5+7+2], center = true);
                translate([0, 9/2, 0])
                    cylinder(h = 5, r = 9/2+4, $fn = 90);
            }
        }
        hull()
        {
            translate([0, 8, 5+(7+4+2)/2])
                cube([9, 2, 7+4+2], center = true);
            translate([0, 9/2, 5])
                cylinder(h = 7+2, r = 9/2, $fn = 90);
        }
        translate([0, 9/2, 0])
            polyhole(5, 5/2);
        translate([0, 9+3.2, 7/2+5])
            rotate([90, 0, 0])
                nutShape(7, 3.2);
        translate([0, 9, 7/2+5])
            rotate([90, 0, 180])
                trunctear(3.2+5, 2, $fn = 90);
        hull()
        {
            translate([0, 9/2-2, 7/2+5+10])
                cube([9, 9+4, 20], center = true);
            translate([0, 9/2-2, 5+1])
                cube([9/2, 9+4, 2], center = true);
        }
    }
}
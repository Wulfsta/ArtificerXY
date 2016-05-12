// L bracket 

use<polyhole.scad>

LBracket();

module LBracket()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([2, 2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([2, 46-2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([20-2, 2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([20-2, 46-2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
            }
            hull()
            {
                translate([2, 2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([2, 26-2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([40-2, 2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([40-2, 26-2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
            }
            translate([10, 23, (5+18)/2])
                cube([20, 6, 5+18], center = true);
        }
        translate([10, 10, 0])
            polyhole(5, 2);
        translate([10, 46-10, 0])
            polyhole(5, 2);
        translate([40-10, 26/2, 0])
            polyhole(5, 2);
    }
}
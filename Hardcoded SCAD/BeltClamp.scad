// Belt Clamp

use<polyhole.scad>

BeltClamp();

module BeltClamp()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([0, 12, 0])
                    scale([15, 8, 14])
                        cylinder(h = 1, r = 0.5, $fn = 90);
                translate([0, -12, 0])
                    scale([15, 8, 14])
                        cylinder(h = 1, r = 0.5, $fn = 90);
            }
        }
        translate([0, (60-26)/4, 10])
            cube([15, (60-26)/2, 8], center = true);
        translate([0, 12, 0])
            polyhole(20, 1.5);
        translate([0, -12, 0])
            polyhole(20, 1.5);
        translate([0, 5, 6])
            cube([15, 6.5, 0.5], center = true);
        translate([0, -5, 14])
            cube([15, 6.5, 0.5], center = true);
        for(i = [-8 : 2 : 8])
            translate([i, -5, 14])
                cube([4/3, 6.5, 0.5+2*0.75], center = true);
        for(i = [-8 : 2 : 8])
            translate([i, 5, 6])
                cube([4/3, 6.5, 0.5+2*0.75], center = true);
    }
}
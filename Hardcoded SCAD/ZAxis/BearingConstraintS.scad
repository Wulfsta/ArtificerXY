// Uses 40mm m4 to connect to the frame.

use<../polyhole.scad>

SBearingConstraint();

module SBearingConstraint()
{
    difference()
    {
        union()
        {
            translate([0, (47/2+6.5+4)/2, (20+12.5)/2])
                cube([20+3*2, 47/2+6.5+4, 20+12.5], center = true);
            translate([0, (47/2+6.5+4+20)/2, (12.5)/2])
                cube([20, 47/2+6.5+4+20, 12.5], center = true);
        }
        polyhole(20+12.5, 47/2);
        translate([0, 47/2+(6.5+4)/2, 0])
            polyhole(20+12.5, 2);
        translate([0, -47/2-6.5, (20+12.5)/2])
            cube([(47/2+6.5)*2, (47/2+6.5)*2, 20+12.5], center = true);
    }
}
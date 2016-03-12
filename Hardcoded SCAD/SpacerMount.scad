// A spacer and mount for the cross section extrusions

use<polyhole.scad>
use<trunctear.scad>

SpacerMount();

module SpacerMount()
{
    difference()
    {
        union()
        {
            translate([0, (2*20+6)/2, 3])
                cube([20, 2*20+6, , 6], center = true);
            translate([0, 23, 13])
                cube([20, 6, 26], center = true);
        }
        translate([0, 2*20+6-10, 0])
            polyhole(6, 2);
        translate([0, 20, 16])
            rotate([90, 0, 180])
                trunctear(6, 2, $fn = 90);
    }
}
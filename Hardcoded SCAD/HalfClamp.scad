// Half-clamp to hang the leadscrews.
//
// Uses two m3 bolts and, if the screw is tapped, one m4.

use<polyhole.scad>
use<trunctear.scad>

HalfClampNut();

module HalfClampNut()
{
    difference()
    {
        union()
        {
            cylinder(h = 20, r = 15/2, $fn = 90);
            hull()
            {
                translate([15, 0, 0])
                    scale([4, 10, 20-14.25])
                        cylinder(h = 1, r = 1, $fn = 90);
                translate([-15, 0, 0])
                    scale([4, 10, 20-14.25])
                        cylinder(h = 1, r = 1, $fn = 90);
                translate([0, 0, (20-14.25)/2])
                    cube([8.8, 20, 20-14.25], center = true);
            }
        }
        polyhole(24, 6);
        hull()
        {
            translate([0, 0, 2])
                rotate([90, 0, 180])
                    trunctear(19, 2, $fn = 90);
            translate([0, 0, 0])
                rotate([90, 0, 180])
                    trunctear(19, 2, $fn = 90);
        }
        translate([10.5, 0, 2.2])
            rotate([90, 0, 180])
                trunctear(19, 1.5, $fn = 90);
        translate([-10.5, 0, 2.2])
            rotate([90, 0, 180])
                trunctear(19, 1.5, $fn = 90);
        translate([0, -14, 0])
            cube([42, 30, 48], center = true);
    }
}

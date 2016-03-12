// Upper brace

use<polyhole.scad>
use<trunctear.scad>

UpperBrace();

module UpperBrace()
{
    dist = 46;
    
    difference()
    {
        union()
        {
            hull()
            {
                translate([3, 20, 3])
                    cube([20+6, 60, 6], center = true);
                translate([15, 3, 3])
                    cube([50, 20+6, 6], center = true);
            }
            translate([3, 30, dist/2])
                cube([20+6, 40, dist], center = true);
            translate([15, 13, 13])
                cube([50, 6, 26], center = true);
        }
        translate([0, 30, dist-10])
            cube([20, 40, 20], center = true);
        polyhole(dist, 2);
        translate([30, 0, 0])
            polyhole(dist, 2);
        translate([0, 20, 0])
            polyhole(dist, 2);
        translate([0, 40, 0])
            polyhole(dist, 2);
        translate([30, 10, 16])
            rotate([90, 0, 180])
                trunctear(6, 2, $fn = 90);
        translate([10, 20, dist-10])
            rotate([90, 0, 90])
                trunctear(6, 2, $fn = 90);
        translate([10, 40, dist-10])
            rotate([90, 0, 90])
                trunctear(6, 2, $fn = 90);
    }
}
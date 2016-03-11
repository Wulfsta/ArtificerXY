// Upper brace connecting a vertical v slot rail to the frame

use<polyhole.scad>
use<trunctear.scad>

UpperBrace();

module UpperBrace()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([3, -15, 17])
                    cube([26, 50, 34], center = true);
                translate([35, -3, 17])
                    cube([50, 26, 34], center = true);
            }
        }
        translate([0, -15, 25+6])
            cube([20, 50, 50], center = true);
        translate([35, 0, 10+8+6])
            cube([50, 20, 20], center = true);
        translate([35+3, -25-3, 25+6])
            cube([50-6, 30-6, 50], center = true);
        translate([13, -25-3, 30])
            cube([6, 30-6, 8], center = true);
        polyhole(6, 2);
        translate([0, -30, 0])
            polyhole(6, 2);
        translate([20, 0, 0])
            polyhole(8+6, 2);
        translate([50, 0, 0])
            polyhole(8+6, 2);
        // 18mm m4
        translate([26, -10, 8+6+10])
            rotate([90, 0, 0])
                trunctear(6, 2, $fn = 90);
        translate([50, -10, 8+6+10])
            rotate([90, 0, 0])
                trunctear(6, 2, $fn = 90);
        translate([10, -30, 6+10])
            rotate([90, 0, 90])
                trunctear(6, 2, $fn = 90);
    }
}

// Bottom of z motor mount
// Uses 12mm m4 rather than 10mm

use<polyhole.scad>
use<nutShape.scad>

ZBottom();

module ZBottom()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([60/2-2, -56.4-(60-56.4)/2+20+2, 0])
                    cylinder(h = 7, r = 2, $fn = 90);
                translate([60/2-2, 20-2, 0])
                    cylinder(h = 7, r = 2, $fn = 90);
                translate([10-2, 60-2, 0])
                    cylinder(h = 7, r = 2, $fn = 90);
                translate([-10+2, 60-2, 0])
                    cylinder(h = 7, r = 2, $fn = 90);
                translate([-60/2+2, 20-2, 0])
                    cylinder(h = 7, r = 2, $fn = 90);
                translate([-60/2+2, -56.4-(60-56.4)/2+20+2, 0])
                    cylinder(h = 7, r = 2, $fn = 90);
            }
            hull()
            {
                translate([0, 1, 7/2])
                    cube([60, 2, 7], center = true);
                translate([0, 1, (7+20+5)/2])
                    cube([40, 2, 7+20+5], center = true);
                translate([0, -56.4-(60-56.4)/2+20+1, 7/2])
                    cube([20, 2, 7], center = true);
                translate([0, -56.4-(60-56.4)/2+20+20+1, 7/2])
                    cube([60, 2, 7], center = true);
            }
        }
        translate([0, 1, (20+5)/2+7])
            cube([60, 2, 20+5], center = true);
        translate([15, 10, 0])
            polyhole(7, 2);
        translate([-15, 10, 0])
            polyhole(7, 2);
        translate([0, 20+10, 0])
            polyhole(7, 2);
        translate([0, 60-10, 0])
            polyhole(7, 2);
        translate([0, -56.4/2+20, 0])
            polyhole(7+20+5, 5);
        translate([47.14/2, -56.4+20+(56.4-47.14)/2, 7-4.7])
            rotate([0, 0, -15])
                nutShape(8, 8);
        translate([-47.14/2, -56.4+20+(56.4-47.14)/2, 7-4.7])
            rotate([0, 0, 15])
                nutShape(8, 8);
        translate([47.14/2, 20-(56.4-47.14)/2, 7-4.7])
            rotate([0, 0, 15])
                nutShape(8, 8);
        translate([-47.14/2, 20-(56.4-47.14)/2, 7-4.7])
            rotate([0, 0, -15])
                nutShape(8, 8);
        translate([47.14/2, -56.4+20+(56.4-47.14)/2, 0])
            polyhole(7, 2.5);
        translate([-47.14/2, -56.4+20+(56.4-47.14)/2, 0])
            polyhole(7, 2.5);
        translate([47.14/2, 20-(56.4-47.14)/2, 0])
            polyhole(7, 2.5);
        translate([-47.14/2, 20-(56.4-47.14)/2, 0])
            polyhole(7, 2.5);
        translate([(22.41+10)/2, 30, 0])
            polyhole(7, 2.5);
        translate([-(22.41+10)/2, 30, 0])
            polyhole(7, 2.5);
    }
}
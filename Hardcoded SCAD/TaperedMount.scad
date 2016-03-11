//Mount for the lead screw bearing

use<polyhole.scad>
use<trunctear.scad>

TaperedMount();

module TaperedMount()
{
    difference()
    {
        union()
        {
            hull()
            {
                difference()
                {
                    hull()
                    {
                        cylinder(h = 8+14.25+(24-14.25)+3, r = 21+6, $fn = 90);
                        translate([(21+6)/2, 0, (8+14.25+(24-14.25)+3)/2])
                            cube([(21+6), 20+12, 8+14.25+(24-14.25)+3], center = true);
                    }
                    translate([-50, 0, 50])
                        cube([100, 100, 100], center = true);
                }
                translate([21+6-3, 0, 8+14.25+(24-14.25)+3+13-6])
                    cube([6, 20+12, 26], center = true);
            }
            hull()
            {
                translate([(21+6)/2, 0, (8+14.25+(24-14.25)+3)/2])
                    cube([(21+6), 20+12, 8+14.25+(24-14.25)+3], center = true);
                translate([21+6+10, 0, 8+14.25+(24-14.25)+3+13-6])
                    cube([20, 20+12, 26], center = true);
            }
            hull()
            {
                difference()
                {
                    hull()
                    {
                        cylinder(h = 8+14.25+(24-14.25)+3, r = 21+6, $fn = 90);
                        translate([-(21+6)/2, 0, (8+14.25+(24-14.25)+3)/2])
                            cube([(21+6), 20+12, 8+14.25+(24-14.25)+3], center = true);
                    }
                    translate([50, 0, 50])
                        cube([100, 100, 100], center = true);
                }
                translate([-(21+6-3), 0, 8+14.25+(24-14.25)+3+13-6])
                    cube([6, 20+12, 26], center = true);
            }
            hull()
            {
                translate([-(21+6)/2, 0, (8+14.25+(24-14.25)+3)/2])
                    cube([(21+6), 20+12, 8+14.25+(24-14.25)+3], center = true);
                translate([-(21+6+10), 0, 8+14.25+(24-14.25)+3+13-6])
                    cube([20, 20+12, 26], center = true);
            }
        }
        polyhole(100, 14);
        translate([0, 0, 8])
            polyhole(100, 21);
        translate([0, 0, 8+14.25+(24-14.25)+3+10])
            cube([100, 20, 20], center = true);
        translate([21+6+10, 50, 8+14.25+(24-14.25)+3+10])
            rotate([90, 0, 0])
                trunctear(100, 2, $fn = 90);
        translate([-(21+6+10), 50, 8+14.25+(24-14.25)+3+10])
            rotate([90, 0, 0])
                trunctear(100, 2, $fn = 90);
    }
}

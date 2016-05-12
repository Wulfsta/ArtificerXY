// Mount for lead screw bearing

use<polyhole.scad>
use<trunctear.scad>
use<nutShape.scad>

LeadMount();

module LeadMount()
{
    difference()
    {
        union()
        {
            hull()
            {
                cylinder(h = 20, r = 21+6, $fn = 90);
                translate([0, 0, 10])
                    cube([27*2, 20+12, 20], center = true);
            }
            hull()
            {
                cylinder(h = 6, r = 21+6, $fn = 90);
                translate([0, 0, 3])
                    cube([2*(21+6)+3, 20+10+11+4, 6], center = true);
                translate([0, 0, 3])
                    cube([2*(21+6+20), 20+10, 6], center = true);
            }
            translate([21+6+20/2, 0, (20+20+6)/2])
                cube([20, 20+10, 20+20+6], center = true);
            translate([-(21+6+20/2), 0, (20+20+6)/2])
                cube([20, 20+10, 20+20+6], center = true);
        }
        polyhole(100, 21);
        translate([30+27, 0, (20+20+6)/2])
            cube([60, 20, 20+20+6], center = true);
        translate([-30-27, 0, (20+20+6)/2])
            cube([60, 20, 20+20+6], center = true);
        translate([21+6+10, (20+12)/2, 10])
            rotate([90, 0, 0])
                trunctear(20+12, 2, $fn = 90);
        translate([-(21+6+10), (20+12)/2, 10])
            rotate([90, 0, 0])
                trunctear(20+12, 2, $fn = 90);
        translate([21+6+10, (20+12)/2, 20+20+6-10])
            rotate([90, 0, 0])
                trunctear(20+12, 2, $fn = 90);
        translate([-(21+6+10), (20+12)/2, 20+20+6-10])
            rotate([90, 0, 0])
                trunctear(20+12, 2, $fn = 90);
        translate([21+6, 10+5+5.5/2, 6])
            nutShape(5.5, 20+20+6);
        translate([21+6, -(10+5+5.5/2), 6])
            nutShape(5.5, 20+20+6);
        translate([-(21+6), 10+5+5.5/2, 6])
            nutShape(5.5, 20+20+6);
        translate([-(21+6), -(10+5+5.5/2), 6])
            nutShape(5.5, 20+20+6);
        translate([21+6, 10+5+5.5/2, 0])
            polyhole(6, 1.5);
        translate([21+6, -(10+5+5.5/2), 0])
            polyhole(6, 1.5);
        translate([-(21+6), 10+5+5.5/2, 0])
            polyhole(6, 1.5);
        translate([-(21+6), -(10+5+5.5/2), 0])
            polyhole(6, 1.5);
    }
}
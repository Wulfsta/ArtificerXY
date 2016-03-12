// Mount for lead screw bearing

use<polyhole.scad>
use<trunctear.scad>

LeadMount();

module LeadMount()
{
    difference()
    {
        union()
        {
            hull()
            {
                cylinder(h = 5+14.25+(20-14.25)+2, r = 21+6, $fn = 90);
                translate([0, -27+16, (5+14.25+(20-14.25)+2)/2])
                    cube([54, 20+12, 5+14.25+(20-14.25)+2], center = true);
                translate([0, 27-16, (5+14.25+(20-14.25)+2)/2])
                    cube([20+12, 27, 5+14.25+(20-14.25)+2], center = true);
            }
            translate([0, -27+16, (5+14.25+(20-14.25)+2)/2])
                cube([110, 20+12, 5+14.25+(20-14.25)+2], center = true);
            translate([0, 55/2, (5+14.25+(20-14.25)+2)/2])
                cube([20+12, 55, 5+14.25+(20-14.25)+2], center = true);
        }
        polyhole(100, 14);
        translate([0, 0, 5])
            polyhole(100, 21);
        translate([30+27, -27+16, 5+14.25+(20-14.25)+2-10])
            cube([60, 20, 20], center = true);
        translate([-30-27, -27+16, 5+14.25+(20-14.25)+2-10])
            cube([60, 20, 20], center = true);
        translate([0, 30+27, 5+14.25+(20-14.25)+2-10])
            cube([20, 60, 20], center = true);
        translate([27+10, -27+16, 0])
            polyhole(7, 2);
        translate([-27-10, -27+16, 0])
            polyhole(7, 2);
        translate([0, 27+10, 0])
            polyhole(7, 2);
        translate([110/2-10, (20+12)/2-27+16, 5+14.25+(20-14.25)+2-10])
            rotate([90, 0, 0])
                trunctear(20+12, 2, $fn = 90);
        translate([-110/2+10, (20+12)/2-27+16, 5+14.25+(20-14.25)+2-10])
            rotate([90, 0, 0])
                trunctear(20+12, 2, $fn = 90);
        translate([-(20+12)/2, 110/2-10, 5+14.25+(20-14.25)+2-10])
            rotate([90, 0, 90])
                trunctear(20+12, 2, $fn = 90);
    }
}
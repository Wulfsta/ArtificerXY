// Mount for the bottom lead screw bearing

use<polyhole.scad>

LeadBearing();

module LeadBearing()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([11+4+20-2, 10-2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([11+4+20-2, -10+2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([-11-4-20+2, 10-2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([-11-4-20+2, -10+2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
            }
            hull()
            {
                cylinder(h = 7+3, r = 11+4, $fn = 90);
                translate([0, 0, 5/2])
                    cube([(11+4)*2, 20, 5], center = true);
            }
        }
        polyhole(10, 7);
        translate([0, 0, 3])
            polyhole(7, 11);
        translate([11+4+10, 0, 0])
            polyhole(5, 2);
        translate([-11-4-10, 0, 0])
            polyhole(5, 2);
    }
}
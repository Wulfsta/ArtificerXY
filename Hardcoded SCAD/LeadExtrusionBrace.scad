// Brace for extrusion that screws hang from

use<polyhole.scad>
use<trunctear.scad>

LeadExtrusionBrace();

module LeadExtrusionBrace()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([0, 0, 3])
                    cube([50, 20, 6], center = true);
                translate([0, 26, 3])
                    cube([20+12, 20, 6], center = true);
            }
            translate([13, 26, 13])
                cube([6, 20, 26], center = true);
            translate([-13, 26, 13])
                cube([6, 20, 26], center = true);
            translate([0, 13, 13])
                cube([20+12, 6, 26], center = true);
        }
        translate([15, 0, 0])
            polyhole(6, 2);
        translate([-15, 0, 0])
            polyhole(6, 2);
        translate([0, 26, 0])
            polyhole(6, 2.5);
        translate([-25, 26, 16])
            rotate([90, 0, 90])
                trunctear(50, 2, $fn = 90);
    }
}
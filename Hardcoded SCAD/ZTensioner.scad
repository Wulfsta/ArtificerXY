// To mount on the middle extrusion and tension the z belt
// Uses one 35mm m4 and one 35mm m5 as well as one m5 t nut

use<trunctear.scad>

ZTensioner();

module ZTensioner()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([40/2, -1, 20/2])
                    cube([40, 2, 20], center = true);
                translate([30/2+10, 30/2, 20/2])
                    cube([30, 30, 20], center = true);
            }
        }
        translate([40/2, -1, 20/2])
            cube([40, 2, 20], center = true);
        translate([40-13/2, 10+24-21+5, 20/2])
            cube([13, 10, 20], center = true);
        translate([15/2+10, 0, 10])
            rotate([90, 0, 180])
                trunctear(30, 2, $fn = 90);
        translate([40-5, 0, 10])
            rotate([90, 0, 180])
                trunctear(30, 2.5, $fn = 90);
    }
}
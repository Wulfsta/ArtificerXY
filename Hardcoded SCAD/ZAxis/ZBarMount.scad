// Mount for z rods

use<../trunctear.scad>

ZBarMount();

module ZBarMount()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([0, 15/2+2, 0])
                    cylinder(h = 20, r = 5+4, $fn = 90);
                translate([5+4-2, 2, 0])
                    cylinder(h = 20, r = 2, $fn = 90);
                translate([-5-4+2, 2, 0])
                    cylinder(h = 20, r = 2, $fn = 90);
            }
            translate([0, 5/2, 10])
                cube([2*(18), 5, 20], center = true);
        }
        translate([0, 15/2+2, 4])
            cylinder(h = 20, r = 5, $fn = 32);
        translate([(5+4+(18-5-4)/2), 5/2, 10])
            rotate([90, 0, 0])
                trunctear(5, 2, true, $fn = 90);
        translate([-(5+4+(18-5-4)/2), 5/2, 10])
            rotate([90, 0, 0])
                trunctear(5, 2, true, $fn = 90);
    }
}
// Mount for z rods
// Uses 40mm m4 bolts

use<polyhole.scad>

ZBarMount();

module ZBarMount()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([-18, -13, 0])
                    cylinder(h = 15+4.5+2, r = 2, $fn = 90);
                translate([-4, -13, 0])
                    cylinder(h = 15+4.5+2, r = 2, $fn = 90);
                translate([-18, 13, 0])
                    cylinder(h = 15+4.5+2, r = 2, $fn = 90);
                translate([-4, 13, 0])
                    cylinder(h = 15+4.5+2, r = 2, $fn = 90);
            }
            hull()
            {
                translate([-18, -13, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([-2, -13, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([-18, 13, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([-2, 13, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
            }
        }
        translate([-10, 10, 0])
            polyhole(15+4.5+2, 2);
        translate([-10, -10, 0])
            polyhole(15+4.5+2, 2);
        translate([-2, 0, 15+5+2])
            rotate([0, -90, 0])
                cylinder(h = 20, r = 5, $fn = 90);
    }
}
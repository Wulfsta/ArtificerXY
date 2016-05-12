// Plate to mount middle extrusion

use<polyhole.scad>

MidMount();

module MidMount()
{
    difference()
    {
        hull()
        {
            translate([20-2, 2, 0])
                cylinder(h = 5, r = 2, $fn = 90);
            translate([20-2, 20-2, 0])
                cylinder(h = 5, r = 2, $fn = 90);
            translate([10-2, 60-2, 0])
                cylinder(h = 5, r = 2, $fn = 90);
            translate([-10+2, 60-2, 0])
                cylinder(h = 5, r = 2, $fn = 90);
            translate([-20+2, 20-2, 0])
                cylinder(h = 5, r = 2, $fn = 90);
            translate([-20+2, 2, 0])
                cylinder(h = 5, r = 2, $fn = 90);
        }
        translate([10, 10, 0])
            polyhole(5, 2);
        translate([-10, 10, 0])
            polyhole(5, 2);
        translate([0, 20+10, 0])
            polyhole(5, 2);
        translate([0, 60-10, 0])
            polyhole(5, 2);
    }
}
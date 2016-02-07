//X-axis endstop mount.

use<polyhole.scad>

difference()
{
    union()
    {
        translate([0, 1.5, 3])
            cube([25, 3, 6], center = true);
        translate([5.25, -9, 3])
            cube([3.5, 18, 6], center = true);
        translate([-5.25, -9, 3])
            cube([3.5, 18, 6], center = true);
        translate([0, -2, 3])
            cube([9, 5, 6], center = true);
    }
    translate([0, -4, 0])
        polyhole(6, 4);
    translate([9.5, 0, 3])
        rotate([-90, 0, 0])
            polyhole(4, 1.5);
    translate([-9.5, 0, 3])
        rotate([-90, 0, 0])
            polyhole(4, 1.5);
    translate([-10, -15, 3])
        rotate([90, 0, 90])
            polyhole(20, 1.5);
}
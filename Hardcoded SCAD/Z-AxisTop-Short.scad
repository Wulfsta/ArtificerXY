// A mount to support the vertical linear rod and lead screw on the part 
//  of the machine that has the shorter distance from the frame to the rod 
//  due to the position of the extruder on the carriage.

use<polyhole.scad>
use<nutShape.scad>

distToRod = 105.25;

difference()
{
    union()
    {
        translate([0, -13, 9.5])
            cube([100, 26, 19], center = true);
        translate([0, -23, 19.5])
            cube([100, 6, 39], center = true);
        hull()
        {
            translate([-16, distToRod, 0])
                cylinder(h = 10, r = 14, $fn = 90);
            translate([16, distToRod, 0])
                cylinder(h = 10, r = 14, $fn = 90);

        }
        hull()
        {
            translate([-16, distToRod, 0])
                cylinder(h = 10, r = 14, $fn = 90);
            translate([-36, -10, 5])
                cube([28, 20, 10], center = true);
        }
        hull()
        {
            translate([16, distToRod, 0])
                cylinder(h = 10, r = 14, $fn = 90);
            translate([36, -10, 5])
                cube([28, 20, 10], center = true);
        }
        intersection()
        {
            hull()
            {
                translate([0, -13, 9.5])
                    cube([100, 26, 19], center = true);
                translate([0, 50, 5])
                    cube([100, 20, 10], center = true);
            }
            union()
            {
                hull()
                {
                    translate([-16, distToRod, 0])
                        cylinder(h = 20, r = 14, $fn = 90);
                    translate([-36, -10, 10])
                        cube([28, 20, 20], center = true);
                }
                hull()
                {
                    translate([16, distToRod, 0])
                        cylinder(h = 10, r = 14, $fn = 90);
                    translate([36, -10, 10])
                        cube([28, 20, 20], center = true);
                }
            }
        }
    }
    translate([-16, distToRod, 2])
        polyhole(8, 8.5);
    hull()
    {
        translate([-16, distToRod, 0])
            polyhole(10, 4);
        translate([-16, distToRod+20, 0])
            polyhole(10, 4);
    }
    translate([-16, distToRod, 8])
        cylinder(h = 2, r1 = 8.5, r2 = 12, $fn = 90);
    translate([16, distToRod, 0])
        polyhole(10, 4);
    hull()
    {
        translate([21, distToRod, 5])
            rotate([0, 90, 0])
                nutShape(5.6, 2.5);
        translate([21, distToRod, 10])
            rotate([0, 90, 0])
                nutShape(5.6, 2.5);
    }
    translate([16, distToRod, 5])
        rotate([90, 0, 90])
            polyhole(20, 1.5);
    translate([40, -10, 0])
        polyhole(25, 2);
    translate([0, -10, 0])
        polyhole(25, 2);
    translate([-40, -10, 0])
        polyhole(25, 2);
    translate([40, -20, 29])
        rotate([90, 22.5, 0])
            polyhole(6, 2);
    translate([0, -20, 29])
        rotate([90, 22.5, 0])
            polyhole(6, 2);
    translate([-40, -20, 29])
        rotate([90, 22.5, 0])
            polyhole(6, 2);
}
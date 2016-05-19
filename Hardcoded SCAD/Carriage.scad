use<trunctear.scad>

Carriage();

module Carriage()
{
    difference()
    {
        union()
        {
            translate([0, 0, (20+6)/2])
                cube([58, 28+2+25-(5+5)*2, 20+6], center = true);
            hull()
            {
                translate([0, (28+2+25)/2-25-2/2, (20+6)/2])
                    cube([58, 8, 20+6], center = true);
                translate([0, (28+2+25)/2-25-2/2, (42.3)/2+2])
                    cube([42.3, 2, 42.3], center = true);
            }
        }
        translate([0, -(25+2)/2, (42.3+2)/2])
            cube([42.3, 28, 42.3+2], center = true);
        translate([0, (28+2)/2, (42.3)/2+2])
            cube([42.3, 25, 42.3], center = true);
        translate([65/2, 0, (20+6)/2])
            rotate([90, 0, 0])
                trunctear(28+2+25, 15/2, true, $fn = 90);
        translate([-65/2, 0, (20+6)/2])
            rotate([90, 0, 0])
                trunctear(28+2+25, 15/2, true, $fn = 90);
        translate([42.3/2+3, 0, (20+6)/2+9])
            rotate([90, 0, 0])
                trunctear(28+2+25, 2, true, $fn = 90);
        translate([42.3/2+3, 0, (20+6)/2-9])
            rotate([90, 0, 0])
                trunctear(28+2+25, 2, true, $fn = 90);
        translate([-42.3/2-3, 0, (20+6)/2+9])
            rotate([90, 0, 0])
                trunctear(28+2+25, 2, true, $fn = 90);
        translate([-42.3/2-3, 0, (20+6)/2-9])
            rotate([90, 0, 0])
                trunctear(28+2+25, 2, true, $fn = 90);
        translate([31/2, 0, 2+42.3/2+31/2])
            rotate([90, 0, 0])
                trunctear(28+2+25, 1.5, true, $fn = 90);
        translate([31/2, 0, 2+42.3/2-31/2])
            rotate([90, 0, 0])
                trunctear(28+2+25, 1.5, true, $fn = 90);
        translate([-31/2, 0, 2+42.3/2+31/2])
            rotate([90, 0, 0])
                trunctear(28+2+25, 1.5, true, $fn = 90);
        translate([-31/2, 0, 2+42.3/2-31/2])
            rotate([90, 0, 0])
                trunctear(28+2+25, 1.5, true, $fn = 90);
        translate([0, 0, 2+42.3/2])
            rotate([90, 0, 0])
                trunctear(28+2+25, 11+2, true, $fn = 90);
        translate([0, (28+2+25)/2-25-2/2, 42.3])
            cube([2*(11+2)*(sqrt(2)-1)+8, 2, 42.3], center = true);
    }
}
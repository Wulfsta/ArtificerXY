use<../../trunctear.scad>

Carriage();

module Carriage()
{
    difference()
    {
        union()
        {
            translate([0, 0, (20+6)/2])
                cube([60, 28+2+25-(5+5)*2-1, 20+6], center = true);
            hull()
            {
                translate([0, (28+2+25)/2-25-2/2, (20+6)/2])
                    cube([60, 2, 20+6], center = true);
                translate([-4.6/2, (28+2+25)/2-25-2/2, (42.3)/2+2])
                    cube([42.3, 2, 42.3], center = true);
            }
        }
        translate([0, -(25+2)/2, (42.3+2)/2])
            cube([(42.3+4.6), 28, 42.3+2], center = true);
        translate([-4.6/2, (28+2)/2, (42.3)/2+4])
            cube([42.3, 25, 42.3], center = true);
        translate([65/2, 0, (20+6)/2])
            rotate([90, 0, 0])
                cylinder(h = 28+2+25, r = 15/2, center = true, $fn = 90);
        translate([-65/2, 0, (20+6)/2])
            rotate([90, 0, 0])
                cylinder(h = 28+2+25, r = 15/2, center = true, $fn = 90);
        translate([(42.3+4.6)/2+3, 0, (20+6)/2+9])
            rotate([90, 0, 0])
                trunctear(28+2+25, 2, true, $fn = 90);
        translate([(42.3+4.6)/2+3, 0, (20+6)/2-9])
            rotate([90, 0, 0])
                trunctear(28+2+25, 2, true, $fn = 90);
        translate([-(42.3+4.6)/2-3, 0, (20+6)/2+9])
            rotate([90, 0, 0])
                trunctear(28+2+25, 2, true, $fn = 90);
        translate([-(42.3+4.6)/2-3, 0, (20+6)/2-9])
            rotate([90, 0, 0])
                trunctear(28+2+25, 2, true, $fn = 90);
        translate([31/2-4.6/2, 0, 4+42.3/2+31/2])
            rotate([90, 0, 0])
                trunctear(28+2+25, 1.5, true, $fn = 90);
        translate([31/2-4.6/2, 0, 4+42.3/2-31/2])
            rotate([90, 0, 0])
                trunctear(28+2+25, 1.5, true, $fn = 90);
        translate([-31/2-4.6/2, 0, 4+42.3/2+31/2])
            rotate([90, 0, 0])
                trunctear(28+2+25, 1.5, true, $fn = 90);
        translate([-31/2-4.6/2, 0, 4+42.3/2-31/2])
            rotate([90, 0, 0])
                trunctear(28+2+25, 1.5, true, $fn = 90);
        translate([-4.6/2, 0, 4+42.3/2])
            rotate([90, 0, 0])
                trunctear(28+2+25, 11+2, true, $fn = 90);
        translate([-4.6/2, (28+2+25)/2-25-2/2, 42.3+4])
            cube([2*(11+2)*(sqrt(2)-1)+8, 2, 42.3], center = true);
        translate([31/2-4.6/2, -(25+2)/2, 4+42.3/2+31/2])
            rotate([90, 0, 0])
                cylinder(h = 28, r = 17.05+1.5, $fn = 90, center = true);
    }
}
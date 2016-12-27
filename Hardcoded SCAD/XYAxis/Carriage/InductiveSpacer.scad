use<../../polyhole.scad>
use<../../trunctear.scad>

InductiveSpacer();

module InductiveSpacer()
{
    difference()
    {
        union()
        {
            translate([-(60-(42.3+4.6))/4, 0, (28)/2])
                cube([(60-(42.3+4.6))/2, 20+6, 28], center = true);
            hull()
            {
                translate([-(60-(42.3+4.6))/4, 0, (4+12+4)/2])
                    cube([(60-(42.3+4.6))/2, 20+6, 4+12+4], center = true);
                translate([-2, -(20+6)/2, 0])
                    cylinder(r = 2, h = 4+12+4, $fn = 90);
                translate([-15, (20+6)/2-2, 0])
                    cylinder(r = 2, h = 4+12+4, $fn = 90);
                translate([-(65/2-(42.3+4.6)/2)-15/2-12/2-4+12/2+4-2, -36, 0])
                    cylinder(r = 2, h = 4+12+4, $fn = 90);
                translate([-(65/2-(42.3+4.6)/2)-15/2-12/2-4-12/2-4+2, -36, 0])
                    cylinder(r = 2, h = 4+12+4, $fn = 90);
                translate([-(65/2-(42.3+4.6)/2)-15/2-12/2-4-12/2-4+2, -(20+6)/2, 0])
                    cylinder(r = 2, h = 4+12+4, $fn = 90);
            }
        }
        translate([-(65/2-(42.3+4.6)/2), 0, 0])
            cylinder(h = 28, r = 15/2, $fn = 32);
        for(i = [-1 : 2 : 1])
            translate([-3, i*9, 0])
                polyhole(28, 2);
        translate([-(65/2-(42.3+4.6)/2)-15/2-12/2-4, -13-45.6, 12/2+4])
            rotate([90, 0, 0])
                trunctear(200, (12-0.7)/2, $fn = 32, true);
        translate([-(65/2-(42.3+4.6)/2)-15/2-12/2-4, -(20+6)/2, 12/2+4])
            rotate([90, 0, 180])
                trunctear(40, 14/2, $fn = 90);
    }
}

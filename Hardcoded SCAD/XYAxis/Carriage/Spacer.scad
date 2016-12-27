use<../../polyhole.scad>
use<../../trunctear.scad>

Spacer();

module Spacer()
{
    difference()
    {
        union()
        {
            translate([(60-(42.3+4.6))/4, 0, (28)/2])
                cube([(60-(42.3+4.6))/2, 20+6, 28], center = true);
        }
        translate([65/2-(42.3+4.6)/2, 0, 0])
            cylinder(h = 28, r = 15/2, $fn = 32);
        for(i = [-1 : 2 : 1])
            translate([3, i*9, 0])
                polyhole(28, 2);
        translate([-(42.3+4.6)/2+31/2-4.6/2, -(20+6)/2+4+42.3/2+31/2, 0])
            cylinder(h = 28, r = 17.05+1.5, $fn = 90);
    }
}
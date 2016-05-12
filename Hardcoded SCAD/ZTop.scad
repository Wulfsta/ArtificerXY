// Top of z motor mount

use<polyhole.scad>

ZTop();

module ZTop()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([60/2-2, -56.4-(60-56.4)/2+20+2, 0])
                    cylinder(h = 6.5, r = 2, $fn = 90);
                translate([60/2-2, 20-2, 0])
                    cylinder(h = 6.5, r = 2, $fn = 90);
                translate([(22.41+10)/2+5, 30+5, 0])
                    cylinder(h = 6.5, r = 2, $fn = 90);
                translate([-(22.41+10)/2-5, 30+5, 0])
                    cylinder(h = 6.5, r = 2, $fn = 90);
                translate([-60/2+2, 20-2, 0])
                    cylinder(h = 6.5, r = 2, $fn = 90);
                translate([-60/2+2, -56.4-(60-56.4)/2+20+2, 0])
                    cylinder(h = 6.5, r = 2, $fn = 90);
            }
            translate([47.14/2, -56.4+20+(56.4-47.14)/2, 0])
                cylinder(h = 24+3, r = 6, $fn = 90);
            translate([-47.14/2, -56.4+20+(56.4-47.14)/2, 0])
                cylinder(h = 24+3, r = 6, $fn = 90);
            translate([47.14/2, 20-(56.4-47.14)/2, 0])
                cylinder(h = 24+3, r = 6, $fn = 90);
            translate([-47.14/2, 20-(56.4-47.14)/2, 0])
                cylinder(h = 24+3, r = 6, $fn = 90);
            hull()
            {
                translate([(22.41+10)/2, 30, 0])
                    cylinder(h = 21-5-4-1, r = 4, $fn = 90);
                translate([(22.41+10)/2, 30, 0])
                    cylinder(h = 21-5-4-1-1, r = 4+1, $fn = 90);
            }
            hull()
            {
                translate([-(22.41+10)/2, 30, 0])
                    cylinder(h = 21-5-4-1, r = 4, $fn = 90);
                translate([-(22.41+10)/2, 30, 0])
                    cylinder(h = 21-5-4-1-1, r = 4+1, $fn = 90);
            }
        }
        translate([0, -56.4/2+20, 0])
            polyhole(6.5, 20);
        translate([47.14/2, -56.4+20+(56.4-47.14)/2, 0])
            polyhole(6.5+24+3, 2.5);
        translate([-47.14/2, -56.4+20+(56.4-47.14)/2, 0])
            polyhole(6.5+24+3, 2.5);
        translate([47.14/2, 20-(56.4-47.14)/2, 0])
            polyhole(6.5+24+3, 2.5);
        translate([-47.14/2, 20-(56.4-47.14)/2, 0])
            polyhole(6.5+24+3, 2.5);
        translate([(22.41+10)/2, 30, 0])
            polyhole(6.5+24+3, 2.5);
        translate([-(22.41+10)/2, 30, 0])
            polyhole(6.5+24+3, 2.5);
    }
}
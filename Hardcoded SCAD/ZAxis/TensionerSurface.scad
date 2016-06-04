use<../polyhole.scad>
use<../trunctear.scad>

TensionerSurface();

module TensionerSurface()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([(37.69/2-10-0.75-5+2.5+5-2), ((12.5+20+3)/2+5+7/2+5-2), 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([(37.69/2-10-0.75-5+2.5+5-2), -((12.5+20+3)/2+5+7/2+5-2), 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([-(37.69/2-10-0.75-5+2.5+5-2), ((12.5+20+3)/2+5+7/2+5-2), 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([-(37.69/2-10-0.75-5+2.5+5-2), -((12.5+20+3)/2+5+7/2+5-2), 0])
                    cylinder(h = 5, r = 2, $fn = 90);
            }
            hull()
            {
                translate([0, 0, 5/2])
                    cube([(37.69/2-10-0.75-5+2.5+5)*2, (12.5-3+20), 5], center = true);
                translate([5, 0, 5+4])
                    rotate([90, 0, 0])
                        cylinder(h = (12.5-3+20), r = 4, center = true, $fn = 90);
            }
        }
        translate([5, 0, 5+4])
            rotate([90, 0, 0])
                trunctear((12.5-3+20), 2, true, $fn = 90);
        translate([-(37.69/2-10-0.75-5), ((12.5+20+3)/2+5+7/2), 0])
            polyhole(5, 2);
        translate([-(37.69/2-10-0.75-5), -((12.5+20+3)/2+5+7/2), 0])
            polyhole(5, 2);
    }
}
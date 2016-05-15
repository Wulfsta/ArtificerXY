// A mount for the y-axis bar.

use<polyhole.scad>

YMount();

module YMount()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([-18, 2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([-18, 42.3+22-2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([-1, 42.3+22-1, 5/2])
                    cube([2, 2, 5], center = true);
                translate([35-2, 2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([35-2, 42.3/2+12.22/2+0.63+5+10-2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
            }
            hull()
            {
                translate([2, -18, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([2, 42.3/2+12.22/2+0.63+5+10-2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([35-2, -18, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([35-2, 42.3/2+12.22/2+0.63+5+10-2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
            }
            hull()
            {
                translate([-18, 42.3+2+5-15+2, 0])
                    cylinder(h = 5+4.5+2, r = 2, $fn = 90);
                translate([-4, 42.3+2+5-15+2, 0])
                    cylinder(h = 5+4.5+2, r = 2, $fn = 90);
                translate([-18, 42.3+22-2, 0])
                    cylinder(h = 5+4.5+2, r = 2, $fn = 90);
                translate([-4, 42.3+22-2, 0])
                    cylinder(h = 5+4.5+2, r = 2, $fn = 90);
            }
        }
        translate([35/2, -10, 0])
            polyhole(5, 2);
        translate([-10, 10, 0])
            polyhole(5, 2);
        translate([-10, 42.3+2+5-10, 0])
            polyhole(5+4.5+2, 2);
        translate([-10, 42.3+2+5+10, 0])
            polyhole(5+4.5+2, 2);
        translate([-2, 42.3+2+5, 5+5+2])
            rotate([0, -90, 0])
                cylinder(h = 20, r = 5, $fn = 90);
        hull()
        {
            translate([25, 42.3/2-12.22/2+5, 0])
                polyhole(5, 2.5);
            translate([10, 42.3/2-12.22/2+5, 0])
                polyhole(5, 2.5);
        }
        translate([25, 42.3/2+12.22/2+0.63+5, 0])
            polyhole(5, 2.5);
    }
}

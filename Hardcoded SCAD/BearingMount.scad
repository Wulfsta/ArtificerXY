// A generic bearing mount

use<polyhole.scad>
use<trunctear.scad>

BearingMount();

module BearingMount()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([-18, 2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([-18, 42.3/2+12.22/2+0.63+5+10-2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([35-2, 2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([35-2, 42.3/2+12.22/2+0.63+5+10-2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
            }
            translate([25, 5/2, 25/2])
                cube([20, 5, 25], center = true);
        }
        translate([-10, 10, 0])
            polyhole(5, 2);
        translate([-10, 42.3/2+12.22/2+0.63+5, 0])
            polyhole(5, 2);
        hull()
        {
            translate([25, 42.3/2-12.22/2+5, 0])
                polyhole(5, 2.5);
            translate([10, 42.3/2-12.22/2+5, 0])
                polyhole(5, 2.5);
        }
        translate([25, 42.3/2+12.22/2+0.63+5, 0])
            polyhole(5, 2.5);
        translate([25, 0, 5+10])
            rotate([90, 0, 180])
                trunctear(6, 2, $fn = 90);
    }
}

module BearingMount1()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([26-2, 2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([26-2, 45-2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([5/2, 45/2, 5/2])
                    cube([5, 45, 5], center = true);
            }
            hull()
            {
                translate([-20+2, 20+2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([-20+2, 45-2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([5/2, 45-25/2, 5/2])
                    cube([5, 25, 5], center = true);
            }
            hull()
            {
                translate([0, 2, 42.3/2+12.22/2+0.63+5+10-2])
                    rotate([0, 90, 0])
                        cylinder(h = 5, r = 2, $fn = 90);
                translate([0, 45-2, 42.3/2+12.22/2+0.63+5+10-2])
                    rotate([0, 90, 0])
                        cylinder(h = 5, r = 2, $fn = 90);
                translate([5/2, 45/2, 5/2])
                    cube([5, 45, 5], center = true);
            }
        }
        translate([26-(26-5)/2, 10, 0])
            polyhole(5, 2);
        translate([26-10, 45-10, 0])
            polyhole(5, 2);
        translate([-20+10, 45-25/2, 0])
            polyhole(5, 2);
        translate([0, 10, 15])
            rotate([90, 0, 90])
                trunctear(6, 2, $fn = 90);
        translate([0, 10, 42.3/2+12.22/2+0.63+5])
            rotate([90, 0, 90])
                trunctear(6, 2, $fn = 90);
        translate([0, 45-10, 42.3/2-12.22/2+5])
            rotate([90, 0, 90])
                trunctear(6, 2.5, $fn = 90);
        translate([0, 45-10, 42.3/2+12.22/2+0.63+5])
            rotate([90, 0, 90])
                trunctear(6, 2.5, $fn = 90);
        
    }
}
// XY Idler End

use<../../polyhole.scad>

GantryIdlerEnd();

module GantryIdlerEnd()
{
    heig = 5+19+5; //distance of bearing assembly and 5mm of platic on each side.
    widt = ((42.3+2+5+19/2+3.5)-(42.3/2+12.22/2+0.63+5))-3; //should be greater than (42.3+2+5)-(42.3/2+12.22/2+0.63+5).
    rod_pos = -widt/2-3+((42.3+2+5)-(42.3/2+12.22/2+0.63+5));
    
    difference()
    {
        union()
        {
            hull()
            {
                translate([0, 0, (5+3.7)/2])
                    cube([widt, heig, 5+3.7], center = true);
                translate([rod_pos, heig/2+19/2+3.5, 0])
                    cylinder(h = 5+3.7, r = 19/2+3.5, $fn = 90);
            }
            hull()
            {
                translate([rod_pos, heig/2+19/2+3.5, 0])
                    cylinder(h = 5+3.7+5+6, r = 19/2+3.5, $fn = 90);
                translate([widt/2-(widt*4/5)/2, heig/2+3.5/2, (5+3.7+5+6)/2])
                    cube([widt*4/5, 3.5, 5+3.7+5+6], center = true);
            }
        }
        translate([0, 0, 5+4])
            rotate([0, 90, 0])
                cylinder(h = widt*2, r = 4, center = true, $fn = 32);
        translate([0, (19/2-5.5/2), 0])
            polyhole(h = 5+3.7, r = 1.5);
        translate([0, -(19/2-5.5/2), 0])
            polyhole(h = 5+3.7, r = 1.5);
        translate([rod_pos, heig/2+19/2+3.5, 0])
            polyhole(h = 5+3.7+5, r = 6.5);
        translate([rod_pos, heig/2+1+19/2+2.5, 5+3.7+5-1])
            cylinder(h = 5+3.7+5+1, r = 19/2, $fn = 32);
    }
}
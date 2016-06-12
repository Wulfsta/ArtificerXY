// XY Idler End

use<../../polyhole.scad>

GantryIdlerEnd();

module GantryIdlerEnd()
{
    heig = 5+19+5; //distance of bearing assembly and 5mm of platic on each side.
    widt = ((42.3+2+5+19/2+2.5)-(42.3/2+12.22/2+0.63+5))-3; //should be greater than (42.3+2+5)-(42.3/2+12.22/2+0.63+5).
    rod_pos = -widt/2-3+((42.3+2+5)-(42.3/2+12.22/2+0.63+5));
    
    difference()
    {
        union()
        {
            hull()
            {
                translate([0, 0, (5+3.7)/2])
                    cube([widt, heig, 5+3.7], center = true);
                translate([rod_pos, heig/2+1+19/2+2.5, 0])
                    cylinder(h = 5+3.7, r = 19/2+2.5, $fn = 90);
            }
            translate([rod_pos, heig/2+1+19/2+2.5, 0])
                cylinder(h = 5+3.7+5+6, r = 19/2+2.5, $fn = 90);
        }
        translate([0, 0, 5+4])
            rotate([0, 90, 0])
                cylinder(h = widt*2, r = 4, center = true, $fn = 32);
        translate([0, (19/2-5.5/2), 0])
            polyhole(h = 5+3.7, r = 1.5);
        translate([0, -(19/2-5.5/2), 0])
            polyhole(h = 5+3.7, r = 1.5);
        translate([rod_pos, heig/2+1+19/2+2.5, 0])
            polyhole(h = 5+3.7+5, r = 6.5);
        translate([rod_pos, heig/2+1+19/2+2.5, 5+3.7+5])
            cylinder(h = 5+3.7+5, r = 19/2, $fn = 32);
    }
}
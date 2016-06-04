use<../../polyhole.scad>

BeltClamp();

module BeltClamp()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([(10/2+5)-2, (20+6)/2-2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([(10/2+5)-2, -(4.5+6.5/2+3-2), 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([-(10/2+5)+2, (20+6)/2-2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([-(10/2+5)+2, -(4.5+6.5/2+3-2), 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([3, (20+6)/2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([-3, (20+6)/2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
            }
            hull()
            {
                translate([3, (20+6)/2, 0])
                    cylinder(h = 5+5, r = 2, $fn = 90);
                translate([-3, (20+6)/2, 0])
                    cylinder(h = 5+5, r = 2, $fn = 90);
            }
        }
        translate([10/2+1, 4.5, 5/2])
            cube([2, 6.5, 5], center =true);
        translate([10/2+1, -4.5, 5/2])
            cube([2, 6.5, 5], center =true);
        translate([-10/2-1, 4.5, 5/2])
            cube([2, 6.5, 5], center =true);
        translate([-10/2-1, -4.5, 5/2])
            cube([2, 6.5, 5], center =true);
        translate([0, 4.5, 5])
            cube([10, 6.5, 2*(1.38-0.75)], center =true);
        translate([0, -4.5, 5])
            cube([10, 6.5, 2*(1.38-0.75)], center =true);
        polyhole(5, 1.5);
    }
}
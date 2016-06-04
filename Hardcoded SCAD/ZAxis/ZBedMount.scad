use<../polyhole.scad>
use<../trunctear.scad>
use<../nutShape.scad>

ZBedMount();

module ZBedMount()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([-(20+5)/2+5, (5+2+15+3.1+5.4+18/2)/2+15+5+2, (5+20)/2])
                    cube([5, 5+2+15+3.1+5.4+18/2, 5+20], center = true);
                translate([(20+5)/2, (15+(5+2)*2+15+3.1+5.4+18/2)/2, (5+20)/2])
                    cube([5, 15+(5+2)*2+15+3.1+5.4+18/2, 5+20], center = true);
            }
            translate([0, (5+2+15+3.1+5.4+18/2)/2+15+5+2, (5+20)/2])
                cube([20+5+5, 5+2+15+3.1+5.4+18/2, 5+20], center = true);
            hull()
            {
                translate([1, 15+(5+2), (5+20)/2])
                    cube([2, (5+2)*2, 5+20], center = true);
                translate([(20+5+5)/2, 15+5+2, 0])
                    cylinder(h = 5+20, r = 5+2, $fn = 90);
            }
            hull()
            {
                translate([0, (5+2+15+3.1+5.4+18/2)/2+15+5+2, (5+20)/2])
                    cube([20+5+5, 5+2+15+3.1+5.4+18/2, 5+20], center = true);
                translate([0, 15+(5+2)*2+15+(3.1+5.4+18/2)/2, (55+3+3)/2])
                    cube([20+5+5, 3.1+5.4+18/2, 55+3+3], center = true);
            }
            hull()
            {
                translate([0, 15+(5+2)*2+15+3.1+5.4+18/4, (55+3+3)/2])
                    cube([20+5+5+7+7, 18/2, 55+3+3], center = true);
                translate([0, 15+(5+2)*2+15+(3.1+5.4+18/2)/2, (55+3+3)/2])
                    cube([20+5+5, 3.1+5.4+18/2, 55+3+3], center = true);
            }
        }
        hull()
        {
            difference()
            {
                hull()
                {
                    translate([0, (15+(5+2)*2+15)/2, (20)/2+5])
                        cube([20, 15+(5+2)*2+15, 20], center = true);
                    translate([-5, (15+(5+2)*2+5)/2, (30)/2+5])
                        cube([10, 15+(5+2)*2+5, 30], center = true);
                }
                translate([-5, (15+(5+2)*2+15)/2, (30)/2+5])
                    cube([10, 15+(5+2)*2+15, 30], center = true);
            }
            difference()
            {
                hull()
                {
                    translate([0, (15+(5+2)*2+15)/2, (20)/2+5])
                        cube([20, 15+(5+2)*2+15, 20], center = true);
                    translate([5, (15+(5+2)*2+5)/2, (30)/2+5])
                        cube([10, 15+(5+2)*2+5, 30], center = true);
                }
                translate([5, (15+(5+2)*2+15)/2, (30)/2+5])
                    cube([10, 15+(5+2)*2+15, 30], center = true);
            }
        }
        //m4 screws; holes are slightly larger to allow for misalginment
        hull()
        {
            translate([(20+5+5)/2, 15+5+2, 20+5-3.2])
                rotate([0, 0, 30])
                    nutShape(7, 55);
            translate([(20+5+5)/2, 15+5+2, 20+5])
                rotate([0, 0, 30])
                    nutShape(8, 55);
        }
        translate([(20+5+5)/2, 15+5+2, 0])
            polyhole(20+5, 2.5);
        difference()
        {
            translate([0, 15+(5+2)*2+15+3.1+5.4+19/2, 0])
                polyhole(55+3+3, 19/2);
            translate([0, 15+(5+2)*2+15+3.1+5.4+19/2-19+3.5, (55+3+3)/2])
                cube([19, 19, 55+3+3], center = true);
        }
        translate([0, 15+(5+2)*2+15+3.1+5.4+19/2, 3])
            polyhole(55, 19/2);
        translate([10, 15/2, 20/2+5])
            rotate([90, 0, 90])
                trunctear(5, 2, $fn = 90);
        translate([10, 15+(5+2)*2+15/2, 20/2+5])
            rotate([90, 0, 90])
                trunctear(5, 2, $fn = 90);
        translate([-10, 15+5+2+(5+2+15)/2, 20/2+5])
            rotate([90, 0, -90])
                trunctear(5, 2, $fn = 90);
        translate([0, 15+(5+2)*2+15, 20/2+5])
            rotate([90, 0, 180])
                trunctear(3.1+5.4+19/2, 2.5, $fn = 90);
        translate([0, 15+(5+2)*2+15+5, 20/2+5])
            rotate([90, 0, 180])
                trunctear(3.1+5.4+19/2, 6, $fn = 90);
        translate([0, 15+3+(5+2+15)/2, 0])
            polyhole(5, 2);
        translate([10+5+(5.5/(2*cos(30))), 15+(5+2)*2+15+3.1+5.4, 6])
            rotate([90, 0, 0])
                nutShape(5.5, 3.1+5.4);
        translate([-10-5-(5.5/(2*cos(30))), 15+(5+2)*2+15+3.1+5.4, 6])
            rotate([90, 0, 0])
                nutShape(5.5, 3.1+5.4);
        translate([10+5+(5.5/(2*cos(30))), 15+(5+2)*2+15+3.1+5.4, 55+3+3-6])
            rotate([90, 0, 0])
                nutShape(5.5, 3.1+5.4);
        translate([-10-5-(5.5/(2*cos(30))), 15+(5+2)*2+15+3.1+5.4, 55+3+3-6])
            rotate([90, 0, 0])
                nutShape(5.5, 3.1+5.4);
        translate([10+5+(5.5/(2*cos(30))), 15+(5+2)*2+15+3.1+5.4+19/2, 6])
            rotate([90, 0, 0])
                trunctear(19/2+3.1+5.4, 1.5, $fn = 90);
        translate([-10-5-(5.5/(2*cos(30))), 15+(5+2)*2+15+3.1+5.4+19/2, 6])
            rotate([90, 0, 0])
                trunctear(19/2+3.1+5.4, 1.5, $fn = 90);
        translate([10+5+(5.5/(2*cos(30))), 15+(5+2)*2+15+3.1+5.4+19/2, 55+3+3-6])
            rotate([90, 0, 0])
                trunctear(19/2+3.1+5.4, 1.5, $fn = 90);
        translate([-10-5-(5.5/(2*cos(30))), 15+(5+2)*2+15+3.1+5.4+19/2, 55+3+3-6])
            rotate([90, 0, 0])
                trunctear(19/2+3.1+5.4, 1.5, $fn = 90);
    }
}
// XY idler

use<trunctear.scad>
use<nutShape.scad>

XYIdler();

module XYIdler()
{
    heig = 5+19+5; //distance of bearing assembly and 5mm of platic on each side.
    widt = 25; //should be greater than (42.3+2+5)-(42.3/2+12.22/2+0.63+5).
    leng = 5+55+5; //length of bearing and 5 mm of plastic on each side.
    
    difference()
    {
        union()
        {
            translate([0, 0, (widt-3)/2])
                    cube([leng, heig, widt-3], center= true);
            hull()
            {
                translate([0, 0, widt+2.5+2.5-1])
                    cube([6, heig, 2], center = true);
                translate([0, 0, widt-3-1])
                    cube([leng, heig, 2], center = true);
            }
        }
        translate([0, 0, widt])
            rotate([90, 0, 0])
                trunctear(heig, 2.5, true, $fn = 90);
        hull()
        {
            translate([(leng/2-8/2-4-5), 0, 0])
                scale([8, 19, widt+2.5+2.5])
                    cylinder(h = 1, r = 1/2, $fn = 90);
            translate([-(leng/2-8/2-4-5), 0, 0])
                scale([8, 19, widt+2.5+2.5])
                    cylinder(h = 1, r = 1/2, $fn = 90);
        }
        translate([leng/2, 0, 0])
            cylinder(h = widt+2.5+2.5, r = 4, $fn = 32);
        translate([-leng/2, 0, 0])
            cylinder(h = widt+2.5+2.5, r = 4, $fn = 32);
        hull()
        {
            translate([(leng/2-4-5-2.4), (19/2-5.5/2), (widt-3)/2])
                rotate([90, 0, 90])
                    nutShape(5.5, 2.4);
            translate([(leng/2-8/2-4-5), (19/2-5.5/(2*cos(30))), (widt-3)/2])
                rotate([90, 0, 90])
                    nutShape(5.5, 2.4);
        }
        hull()
        {
            translate([(leng/2-4-5-2.4), -(19/2-5.5/2), (widt-3)/2])
                rotate([90, 0, 90])
                    nutShape(5.5, 2.4);
            translate([(leng/2-8/2-4-5), -(19/2-5.5/(2*cos(30))), (widt-3)/2])
                rotate([90, 0, 90])
                    nutShape(5.5, 2.4);
        }
        hull()
        {
            translate([-(leng/2-4-5-2.4), (19/2-5.5/2), (widt-3)/2])
                rotate([90, 0, -90])
                    nutShape(5.5, 2.4);
            translate([-(leng/2-8/2-4-5), (19/2-5.5/(2*cos(30))), (widt-3)/2])
                rotate([90, 0, -90])
                    nutShape(5.5, 2.4);
        }
        hull()
        {
            translate([-(leng/2-4-5-2.4), -(19/2-5.5/2), (widt-3)/2])
                rotate([90, 0, -90])
                    nutShape(5.5, 2.4);
            translate([-(leng/2-8/2-4-5), -(19/2-5.5/(2*cos(30))), (widt-3)/2])
                rotate([90, 0, -90])
                    nutShape(5.5, 2.4);
        }
        translate([0, (19/2-5.5/2), (widt-3)/2])
            rotate([90, 0, 90])
                trunctear(leng, 1.5, true, $fn = 90);
        translate([0, -(19/2-5.5/2), (widt-3)/2])
            rotate([90, 0, 90])
                trunctear(leng, 1.5, true, $fn = 90);
    }
}
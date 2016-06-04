use<../polyhole.scad>

ZBearingClamp();

module ZBearingClamp()
{
    difference()
    {
        union()
        {
            translate([0, 0, (18/2+6)/2])
                cube([55+3+3, 20+5+5+7+7, 18/2+6], center = true);
        }
        difference()
        {
            translate([0, 0, 19/2+6])
                rotate([0, 90, 0])
                    cylinder(h = 55+3+3, r = 19/2, center = true, $fn = 90);
            translate([0, 0, (6+3.5)/2])
                cube([55+3+3, 20+5+5+7+7, 6+3.5], center = true);
        }
        translate([0, 0, 19/2+6])
                rotate([0, 90, 0])
                    cylinder(h = 55, r = 19/2, center = true, $fn = 90);
        translate([((55+3+3)/2-6), (10+5+(5.5/(2*cos(30)))), 0])
            polyhole(18/2+6, 1.5);
        translate([((55+3+3)/2-6), -(10+5+(5.5/(2*cos(30)))), 0])
            polyhole(18/2+6, 1.5);
        translate([-((55+3+3)/2-6), (10+5+(5.5/(2*cos(30)))), 0])
            polyhole(18/2+6, 1.5);
        translate([-((55+3+3)/2-6), -(10+5+(5.5/(2*cos(30)))), 0])
            polyhole(18/2+6, 1.5);
    }
}
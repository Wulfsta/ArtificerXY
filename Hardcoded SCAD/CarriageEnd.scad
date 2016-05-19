use<polyhole.scad>

CarriageEnd();

module CarriageEnd()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([65/2, 0, 0])
                    cylinder(h = 5+5+5, r = (15+5)/2, $fn = 90);
                translate([-65/2, 0, 0])
                    cylinder(h = 5+5+5, r = (15+5)/2, $fn = 90);
                translate([0, 0, (5+5+5)/2])
                    cube([42.3+4+3, 20+6, 5+5+5], center = true);
            }
        }
        translate([65/2, 0, 5+5])
            cylinder(h = 5+5, r = 15/2, $fn = 32);
        translate([-65/2, 0, 5+5])
            cylinder(h = 5+5, r = 15/2, $fn = 32);
        translate([65/2, 0, 0])
            polyhole(5+5+5, 5.5);
        translate([-65/2, 0, 0])
            polyhole(5+5+5, 5.5);
        translate([42.3/2+3, 9, 0])
            polyhole(5+5+5, 2);
        translate([42.3/2+3, -9, 0])
            polyhole(5+5+5, 2);
        translate([-42.3/2-3, 9, 0])
            polyhole(5+5+5, 2);
        translate([-42.3/2-3, -9, 0])
            polyhole(5+5+5, 2);
        translate([0, 42.3/2-13, 5+(25+2+28)/2])
            cube([42.3, 42.3, 25+2+28], center = true);
    }
}
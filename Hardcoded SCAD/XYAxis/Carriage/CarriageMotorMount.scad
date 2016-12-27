use<../../polyhole.scad>

CarriageMotorMount();

module CarriageMotorMount()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([0, 0, (25+2-(5+5)-0.5)/2])
                    cube([60, 20+6, 25+2-(5+5)-0.5], center = true);
                translate([4.6/2, (42.3)/2-(20+6)/2+4, (2)/2])
                    cube([42.3, 42.3, 2], center = true);
            }
        }
        translate([4.6/2, (42.3)/2-(20+6)/2+4, (25)/2+2])
            cube([42.3, 42.3, 25], center = true);
        for(i = [-1 : 2 : 1])
            translate([i*65/2, 0, 0])
                cylinder(h = 25+2, r = 15/2, $fn = 32);
        for(i = [-1 : 2 : 1])
            for(j = [-1 : 2 : 1])
                translate([i*((42.3+4.6)/2+3), j*9, 0])
                    polyhole(25+2-(5+5), 2);
        translate([4.6/2, (42.3)/2-(20+6)/2+4, 0])
            polyhole(2, 11+2);
        for(i = [-1 : 2 : 1])
            for(j = [-1 : 2 : 1])
                translate([i*31/2+4.6/2, -(20+6)/2+4+42.3/2+j*31/2, 0])
                    polyhole(2, 1.5);
    }
}
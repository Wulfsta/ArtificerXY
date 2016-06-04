MidBrace();

module MidBrace()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([2, 2])
                    circle(r = 2, $fn = 90);
                translate([2, 20+12.5+20-2])
                    circle(r = 2, $fn = 90);
                translate([30-2, 2])
                    circle(r = 2, $fn = 90);
                translate([30-2, 20+12.5+20-2])
                    circle(r = 2, $fn = 90);
            }
        }
        translate([7, 10])
            circle(r = 2, $fn = 90);
        translate([30-7, 10])
            circle(r = 2, $fn = 90);
        translate([7, 20+12.5+10])
            circle(r = 2, $fn = 90);
        translate([30-7, 20+12.5+10])
            circle(r = 2, $fn = 90);
    }
}
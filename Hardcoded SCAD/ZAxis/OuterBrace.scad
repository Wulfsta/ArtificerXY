OuterBrace();

module OuterBrace()
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
                translate([20-2, 2])
                    circle(r = 2, $fn = 90);
                translate([20-2, 20+12.5+20-2])
                    circle(r = 2, $fn = 90);
            }
            hull()
            {
                translate([2, 2])
                    circle(r = 2, $fn = 90);
                translate([2, 20+12.5-2])
                    circle(r = 2, $fn = 90);
                translate([40-2, 2])
                    circle(r = 2, $fn = 90);
                translate([40-2, 20+12.5-2])
                    circle(r = 2, $fn = 90);
            }
        }
        translate([10, 10])
            circle(r = 2, $fn = 90);
        translate([10, 20+12.5+20-10])
            circle(r = 2, $fn = 90);
        translate([40-10, (20+12.5)/2])
            circle(r = 2, $fn = 90);
    }
}
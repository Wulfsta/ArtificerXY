InnerBrace();

module InnerBrace()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([2, 0])
                    circle(r = 2, $fn = 90);
                translate([2, 20-2])
                    circle(r = 2, $fn = 90);
                translate([12.5-3+20-2, 20-2])
                    circle(r = 2, $fn = 90);
                translate([12.5-3+20-2, -30+2])
                    circle(r = 2, $fn = 90);
                translate([12.5-3+2, -30+2])
                    circle(r = 2, $fn = 90);
            }
        }
        translate([7, 10])
            circle(r = 2, $fn = 90);
        translate([12.5-3+20-7, 10])
            circle(r = 2, $fn = 90);
        translate([12.5-3+10, -30+7])
            circle(r = 2, $fn = 90);
        translate([12.5-3+10, -7])
            circle(r = 2, $fn = 90);
    }
}
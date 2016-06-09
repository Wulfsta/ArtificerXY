XYIdlerPlate();

module XYIdlerPlate()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([-18, 8+2])
                    circle(r = 2, $fn = 90);
                translate([-18, 42.3+22-2])
                    circle(r = 2, $fn = 90);
                translate([-1, 42.3+22-1])
                    square([2, 2], center = true);
                translate([35-2, 8+2])
                    circle(r = 2, $fn = 90);
                translate([35-2, 42.3/2+12.22/2+0.63+5+10-2])
                    circle(r = 2, $fn = 90);
            }
            hull()
            {
                translate([2, -18])
                    circle(r = 2, $fn = 90);
                translate([2, 42.3/2+12.22/2+0.63+5+10-2])
                    circle(r = 2, $fn = 90);
                translate([35-2, -18])
                    circle(r = 2, $fn = 90);
                translate([35-2, 42.3/2+12.22/2+0.63+5+10-2])
                    circle(r = 2, $fn = 90);
            }
        }
        hull()
        {
            translate([35/2, -10+4])
                circle(r = 2, $fn = 90);
            translate([35/2, -10-4])
                circle(r = 2, $fn = 90);
        }
        translate([-10, 8+10])
            circle(r = 2, $fn = 90);
        translate([-10, 42.3+2+5-10])
            circle(r = 2, $fn = 90);
        translate([-10, 42.3+2+5+10])
            circle(r = 2, $fn = 90);
        hull()
        {
            translate([25, 42.3/2-12.22/2+5, 0])
                circle(r = 2.5, $fn = 90);
            translate([10, 42.3/2-12.22/2+5, 0])
                circle(r = 2.5, $fn = 90);
        }
        translate([25, 42.3/2+12.22/2+0.63+5, 0])
            circle(r = 2, $fn = 90);
    }
}
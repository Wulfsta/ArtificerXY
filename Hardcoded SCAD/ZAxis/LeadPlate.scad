LeadPlate();

module LeadPlate()
{
    difference()
    {
        union()
        {
            hull()
            {
                circle(r = 47/2+6.5, $fn = 90);
                translate([((20+3*2)/2-2), (47/2+6.5+4+20-2)])
                    circle(r = 2, $fn = 90);
                translate([((20+3*2)/2-2), -(47/2+6.5+4+20-2)])
                    circle(r = 2, $fn = 90);
                translate([-((20+3*2)/2-2), (47/2+6.5+4+20-2)])
                    circle(r = 2, $fn = 90);
                translate([-((20+3*2)/2-2), -(47/2+6.5+4+20-2)])
                    circle(r = 2, $fn = 90);
            }

        }
        circle(r = 39/2, $fn = 90);
        translate([0, (47/2+(6.5+4)/2), 0])
            circle(r = 2, $fn = 90);
        translate([0, -(47/2+(6.5+4)/2), 0])
            circle(r = 2, $fn = 90);
        translate([0, (47/2+6.5+4+10), 0])
            circle(r = 2, $fn = 90);
        translate([0, -(47/2+6.5+4+10), 0])
            circle(r = 2, $fn = 90);
    }
}
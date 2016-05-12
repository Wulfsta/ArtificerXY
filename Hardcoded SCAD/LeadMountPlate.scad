// A plate that attaches to the bottom of LeadMount

LeadMountPlate();

module LeadMountPlate()
{
    difference()
    {
        union()
        {
            hull()
            {
                circle(r = 21+6, $fn = 90);
                translate([0, 0, 3])
                    square([2*(21+6)+3, 20+10+11+4], center = true);
                translate([0, 0, 3])
                    square([2*(21+6+20), 20+10], center = true);
            }
        }
        circle(r = 35/2, $fn = 90);
        translate([21+6, 10+5+5.5/2])
            circle(r = 1.5, $fn = 90);
        translate([21+6, -(10+5+5.5/2)])
            circle(r = 1.5, $fn = 90);
        translate([-(21+6), 10+5+5.5/2])
            circle(r = 1.5, $fn = 90);
        translate([-(21+6), -(10+5+5.5/2)])
            circle(r = 1.5, $fn = 90);
        translate([21+6+10, 0])
            circle(r = 2, $fn = 90);
        translate([-(21+6+10), 0])
            circle(r = 2, $fn = 90);
    }
}
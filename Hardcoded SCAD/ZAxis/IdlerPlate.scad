IdlerPlate();

module IdlerPlate()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([-(37.69/2-10-0.75-5+2.5+5-2), 2])
                    circle(r = 2, $fn = 90);
                translate([-(37.69/2-10-0.75-5+2.5+5-2), 35-2])
                    circle(r = 2, $fn = 90);
                translate([15-2, 35-2])
                    circle(r = 2, $fn = 90);
                translate([(20+37.69/2-10+1.38+5+2.5+10-2), 2])
                    circle(r = 2, $fn = 90);
            }
            hull()
            {
                translate([20+2.5, 2])
                    circle(r = 2, $fn = 90);
                translate([(20+37.69/2-10+1.38+5+2.5+10-2), 2])
                    circle(r = 2, $fn = 90);
                translate([20+2.5, -20-2])
                    circle(r = 2, $fn = 90);
                translate([(20+37.69/2-10+1.38+5+2.5+10-2), -20-2])
                    circle(r = 2, $fn = 90);
            }
            hull()
            {
                translate([(20+37.69/2-10+1.38+5+2.5+10-2), -20-2])
                    circle(r = 2, $fn = 90);
                translate([2, -20-2])
                    circle(r = 2, $fn = 90);
                translate([2, -20-20+2])
                    circle(r = 2, $fn = 90);
                translate([20, -20-20+2])
                    circle(r = 2, $fn = 90);
            }
        }
        translate([10, -20-10])
            circle(r = 2, $fn = 90);
        translate([(20+37.69/2-10+1.38+5), -10])
            circle(r = 2.5, $fn = 90);
        hull()
        {
            translate([-(37.69/2-10-0.75-5), 10])
                circle(r = 2.5, $fn = 90);
            translate([-(37.69/2-10-0.75-5), 25])
                circle(r = 2.5, $fn = 90);
        }
        translate([5, 35-4])
            circle(r = 2, $fn = 90);
    }
}
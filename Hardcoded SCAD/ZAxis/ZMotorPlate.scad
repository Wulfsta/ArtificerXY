ZMotorPlate();

module ZMotorPlate()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([0, 2])
                    circle(r = 2, $fn = 90);
                translate([-(42.3/2-10-2), 6+2])
                    circle(r = 2, $fn = 90);
                translate([-(42.3/2-10-2), (43.9/2+6+42.3/2-2)])
                    circle(r = 2, $fn = 90);
                translate([(42.3/2+10-2), (43.9/2+6+42.3/2-2)])
                    circle(r = 2, $fn = 90);
                translate([(20+37.69/2-10+1.38+5+2.5+10-2), 15+7-2])
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
                translate([20+2.5, -20.5-2])
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
        translate([10, 43.9/2+6])
            circle(r = 14, $fn = 90);
        translate([10+31/2, 43.9/2+6+31/2])
            circle(r = 1.5, $fn = 90);
        translate([10+31/2, 43.9/2+6-31/2])
            circle(r = 1.5, $fn = 90);
        translate([10-31/2, 43.9/2+6+31/2])
            circle(r = 1.5, $fn = 90);
        translate([10-31/2, 43.9/2+6-31/2])
            circle(r = 1.5, $fn = 90);
        translate([43.9/2+10+1.75+5, 15])
            circle(r = 2.5, $fn = 90);
    }
}
TensionerPlate();

module TensionerPlate()
{
    difference()
    {
        hull()
        {
            translate([10+7/2+3+5, -5])
                circle(r = 2, $fn = 90);
            translate([10+7/2+3+5, 5])
                circle(r = 2, $fn = 90);
            translate([-10+2, 20])
                circle(r = 2, $fn = 90);
            translate([10-2, 20])
                circle(r = 2, $fn = 90);
            translate([-(10+7/2+3+5), 5])
                circle(r = 2, $fn = 90);
            translate([-(10+7/2+3+5), -5])
                circle(r = 2, $fn = 90);
        }
        circle(r = 2, $fn = 90);
        translate([0, 15])
            circle(r = 2, $fn = 90);
        translate([10+7/2+3, 0])
            circle(r = 2, $fn = 90);
        translate([-(10+7/2+3), 0])
            circle(r = 2, $fn = 90);
    }
}
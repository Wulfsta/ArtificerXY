// A mount for the motors of the x and y axis in plate form.

XYMotorMountPlate();

module XYMotorMountPlate()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([-18, 2])
                    circle(r = 2, $fn = 90);
                translate([-18, 42.3+22-2])
                    circle(r = 2, $fn = 90);
                translate([-1, 42.3+22-1])
                    square([2, 2], center = true);
                translate([42.3-2, 2])
                    circle(r = 2, $fn = 90);
                translate([42.3-2, 42.3-2])
                    circle(r = 2, $fn = 90);
            }
            hull()
            {
                translate([2, -18])
                    circle(r = 2, $fn = 90);
                translate([2, 42.3-2])
                    circle(r = 2, $fn = 90);
                translate([42.3-2, -18])
                    circle(r = 2, $fn = 90);
                translate([42.3-2, 42.3-2])
                    circle(r = 2, $fn = 90);
            }
        }
        translate([21.15, 21.15])
            circle(r = 14, $fn = 90);
        translate([5.65, 5.65])
            circle(r = 1.5, $fn = 90);
        translate([5.65, 36.65])
            circle(r = 1.5, $fn = 90);
        translate([36.65, 5.65])
            circle(r = 1.5, $fn = 90);
        translate([36.65, 36.65])
            circle(r = 1.5, $fn = 90);
        translate([10, -10])
            circle(r = 2, $fn = 90);
        translate([42.3-10, -10])
            circle(r = 2, $fn = 90);
        translate([-10, 10])
            circle(r = 2, $fn = 90);
        translate([-10, 42.3+2+5-10])
            circle(r = 2, $fn = 90);
        translate([-10, 42.3+2+5+10])
            circle(r = 2, $fn = 90);
    }
}
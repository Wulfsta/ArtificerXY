use<polyhole.scad>

InnerBrace();

module InnerBrace()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([2, 2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([2, 40-2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([40-2, 20-2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([20-2, 40-2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
                translate([40-2, 2, 0])
                    cylinder(h = 5, r = 2, $fn = 90);
            }
        }
        translate([10, 10])
            polyhole(5, 2);
        translate([40-10, 10])
            polyhole(5, 2);
        translate([10, 40-10])
            polyhole(5, 2);
    }
}
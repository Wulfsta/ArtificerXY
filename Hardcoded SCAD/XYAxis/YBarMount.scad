use<../polyhole.scad>

YBarMount();

module YBarMount()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([-18, 15-2, 0])
                    cylinder(h = 2+1+2.5+19/2-0.5, r = 2, $fn = 90);
                translate([-4, 15-2, 0])
                    cylinder(h = 2+1+2.5+19/2-0.5, r = 2, $fn = 90);
                translate([-18, -15+2, 0])
                    cylinder(h = 2+1+2.5+19/2-0.5, r = 2, $fn = 90);
                translate([-4, -15+2, 0])
                    cylinder(h = 2+1+2.5+19/2-0.5, r = 2, $fn = 90);
            }
        }
        translate([-10, 10, 0])
            polyhole(5+1+2.5+19/2-0.5, 2);
        translate([-10, -10, 0])
            polyhole(5+1+2.5+19/2-0.5, 2);
        translate([-2, 0, 2+1+2.5+19/2])
            rotate([0, -90, 0])
                cylinder(h = 20, r = 5, $fn = 90);
    }
}
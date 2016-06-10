use<polyhole.scad>

spacer(10, 10, 5);

module spacer(hei, or, ir, cent = false)
{
    difference()
    {
        cylinder(h = hei, r = or, center = cent, $fn = 90);
        polyhole(hei, ir, cent);
    }
}
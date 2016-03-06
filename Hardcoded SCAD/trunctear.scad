//A module for truncated tear drops.

trunctear(1, 0.5, 90);

module trunctear(height, radian, fn)
{
    hull()
    {
        cylinder(h = height, r = radian,$fn = fn);
        translate([0, radian/2, height/2])
            cube([2*(radian*(2*cos(45)-1)), radian, height], center = true);
    }
}
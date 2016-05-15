//A module for truncated tear drops.

trunctear(1, 0.5, $fn = 90);

module trunctear(hei, radian, cent = false)
{
    linear_extrude(height = hei, center = cent)
        hull()
        {
            circle(r = radian);
            translate([0, radian/2])
                square([2*(radian*(2*cos(45)-1)), radian], center = true);
        }
}
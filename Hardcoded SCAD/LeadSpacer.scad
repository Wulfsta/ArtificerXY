use<polyhole.scad>

LeadSpacer();

module LeadSpacer()
{
    difference()
    {
        cylinder(h = 15, r = 15/2, $fn = 90);
        polyhole(15, 9/2);
    }
}
use<../polyhole.scad>

LeadSpacer();

module LeadSpacer()
{
    hei = 30-(6+10.4);
    
    difference()
    {
        cylinder(h = hei, r = 20/2, $fn = 90);
        polyhole(hei, 6/2);
        translate([0, 0, hei-7.9])
            polyhole(7.9, 15.9/2);
        hull()
        {
            translate([6/2+(15.9-6)/4, 0, hei-7.9/2])
                rotate([90, 0, 0])
                    cylinder(h = 20, r = 2, center = true, $fn = 90);
            translate([6/2+(15.9-6)/4, 0, hei])
                rotate([90, 0, 0])
                    cylinder(h = 20, r = 2, center = true, $fn = 90);
        }
    }
}
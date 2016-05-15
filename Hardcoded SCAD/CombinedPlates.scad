use<LeadMountPlate.scad>
use<LeadPlate.scad>
use<TensionerPlate.scad>

translate([0, 68])
    LeadMountPlate();
    
translate([0, -68])
    LeadMountPlate();
    
translate([0, 19])
    LeadPlate();
    
translate([0, -19])
    LeadPlate();
    
translate([42, 0])
    rotate([0, 0, 90])
        TensionerPlate();

translate([-42, 0])
    rotate([0, 0, -90])
        TensionerPlate();
use<LeadMountPlate.scad>
use<LeadPlate.scad>

translate([0, 21+6+3])
    LeadMountPlate();
    
translate([0, -21-6-3])
    LeadMountPlate();
    
translate([68, 21+6+3])
    LeadPlate();
    
translate([68, -21-6-3])
    LeadPlate();
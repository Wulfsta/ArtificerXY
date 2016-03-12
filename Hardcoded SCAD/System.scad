use<BearingMount.scad>
use<BearingMountMirror.scad>
use<Bed.scad>
use<BedMountC.scad>
use<BedMountCMirror.scad>
use<Carriage.scad>
use<CoreMotorMount.scad>
use<CornerBrace.scad>
use<LeadExtrusionBrace.scad>
use<LeadMount.scad>
use<LowerBrace.scad>
use<LowerBraceMirror.scad>
use<UpperBrace.scad>
use<UpperBraceMirror.scad>
use<X-AxisIdler.scad>
use<Y-BarMount.scad>
use<Y-BarMountBearings.scad>
use<Y-BarMountBearingsMirror.scad>
use<Y-BarMountMirror.scad>
use<Z-MotorMount.scad>

xdist = ceil(2*(51.25+18)+86+200+30);
ydist = ceil(90+22+42.3+200+40);

translate([0, 0, 26])
    YMountBearing();
translate([0, 0, 0])
    BearingMount();
  
translate([xdist, 0, 26])
    YMountBearingMirror();
translate([xdist, 0, 0])
    BearingMountMirror();

translate([xdist, ydist, 26])
    rotate([0, 0, 180])
        YMount();
translate([xdist, ydist, 0])
    rotate([0, 0, 180])
        CoreMotorMount();
        
translate([0, ydist, 26])
    rotate([0, 0, 180])
        YMountMirror();
translate([0, ydist, 0])
    rotate([0, 0, -90])
        CoreMotorMount();
        
translate([xdist-(51.25+18), ydist/2, 2])
    rotate([90, 0, 90])
        XIdler();
        
translate([51.25+18, ydist/2, 2])
    rotate([90, 0, -90])
        XIdler();
        
translate([xdist/2, ydist/2-43, 10.75+16])
    rotate([180, 0, 180])
        Carriage();

translate([xdist/2+214/2+46-27+16, -26, 16])
    rotate([-90, 0, 0])
        LeadExtrusionBrace();
        
translate([xdist/2-214/2-46+27-16, ydist+26, 16])
    rotate([-90, 0, 180])
        LeadExtrusionBrace();

translate([xdist/2+214/2+46-27+16, ydist+26, 16])
    rotate([-90, 0, 180])
        LeadExtrusionBrace();

translate([xdist/2-214/2-46+27-16, -26, 16])
    rotate([-90, 0, 0])
        LeadExtrusionBrace();
        
translate([-26, ydist/2, 16])
    rotate([-90, 0, -90])
        LeadExtrusionBrace();
        
translate([xdist+26, ydist/2, 16])
    rotate([-90, 0, 90])
        LeadExtrusionBrace();
        
translate([xdist/2+214/2+46, ydist/2, -(5+14.25+(20-14.25)+2)])
    rotate([0, 0, -90])
        LeadMount();
        
translate([xdist/2-214/2-46, ydist/2, -(5+14.25+(20-14.25)+2)])
    rotate([0, 0, 90])
        LeadMount();

translate([xdist/2+214/2+46-27+16+16, ydist/2-214/2+10, -10])
    rotate([-90, 0, 90])
        UpperBrace();
        
translate([xdist/2+214/2+46-27+16+16, ydist/2+214/2-10, -10])
    rotate([-90, 0, 90])
        UpperBraceMirror();

translate([xdist/2-214/2-46+27-16-16, ydist/2+214/2-10, -10])
    rotate([-90, 0, -90])
        UpperBrace();

translate([xdist/2-214/2-46+27-16-16, ydist/2-214/2+10, -10])
    rotate([-90, 0, -90])
        UpperBraceMirror();
        
translate([xdist/2-214/2-46+27-16-16-42.3/2-20, ydist/2-214/2+10, -200])
    rotate([90, 0, 90])
        LowerBrace();
        
translate([xdist/2-214/2-46+27-16-16-42.3/2-20, ydist/2+214/2-10, -200])
    rotate([90, 0, 90])
        LowerBraceMirror();

translate([xdist/2+214/2+46-27+16+16+42.3/2+20, ydist/2+214/2-10, -200])
    rotate([90, 0, -90])
        LowerBrace();

translate([xdist/2+214/2+46-27+16+16+42.3/2+20, ydist/2-214/2+10, -200])
    rotate([90, 0, -90])
        LowerBraceMirror();

translate([xdist/2+214/2+46-27+16+16+42.3/2+20, ydist/2, -200+10])
    rotate([90, 0, -90])
        ZMotorMount();
        
translate([xdist/2-214/2-46+27-16-16-42.3/2-20, ydist/2, -200+10])
    rotate([90, 0, 90])
        ZMotorMount();

translate([xdist/2, ydist/2, -100])
    linear_extrude(height = 8)
        Bed();

echo((xdist+40));
echo((ydist+40));
echo(10.75+10+6+5+14.25+(20-14.25)+2);
echo(27-16+10+6+15+4);


//translate([xdist/2+214/2+46, ydist/2, -10])
//    cube([20, ydist+40, 20], center = true);
//
//Shows "belt" and "timing pully"
//translate([42.3/2+12.2/2, 0, 0])
//    cube([0.63, ydist, 40]);
//translate([21.15, ydist-21.25, 0])
//    cylinder(h = 40, r = 6.1, $fn = 45);
//translate([42.3/2+12.2/2+0.63+5, ydist/2, 0])
//    cylinder(h = 40, r = 5, $fn = 90);
use<BearingMount.scad>
use<BearingMountMirror.scad>
use<Carriage.scad>
use<CoreMotorMount.scad>
use<CoreMotorMountMirror.scad>
use<InnerBrace.scad>
use<LeadMount.scad>
use<LeadMountPlate.scad>
use<LBracket.scad>
use<LBracketMirror.scad>
use<Y-BarMount.scad>
use<Y-BarMountMirror.scad>

xdist = ceil(2*(51.25+18)+86+200+30);
ydist = ceil(90+22+42.3+200+40);

translate([0, 0, 25])
    rotate([0, 0, -90])
        YMountMirror();
translate([0, 0, 0])
    rotate([0, 0, -90])
        BearingMountMirror();
translate([-25, 20, -21])
    rotate([90, 0 ,90])
        LBracketMirror();
  
translate([xdist, 0, 25])
    rotate([0, 0, 90])
        YMount();
translate([xdist, 0, 0])
    rotate([0, 0, 90])
        BearingMount();
translate([xdist+25, 20, -21])
    rotate([90, 0 ,-90])
        LBracket();

translate([0, ydist, 25])
    rotate([0, 0, -90])
        CoreMotorMount();
translate([-25, ydist-20, -21])
    rotate([90, 0 ,90])
        LBracket();
translate([0, ydist+20, -1])
    rotate([90, 180, 90])
        InnerBrace();

translate([xdist, ydist, 25])
    rotate([0, 0, 90])
        CoreMotorMountMirror();
translate([xdist+25, ydist-20, -21])
    rotate([90, 0 ,-90])
        LBracketMirror();
translate([xdist-5, ydist+20, -1])
    rotate([90, 180, 90])
        InnerBrace();
        
translate([xdist/2, ydist/2+43, 10.75+16])
    rotate([180, 0, 0])
        Carriage();
        
translate([-10, ydist/2, -20])
    rotate([0, 0, -90])
        LeadMount();
translate([-10, ydist/2, -20-5])
    rotate([0, 0, -90])
        linear_extrude(height = 5)
            LeadMountPlate();
        
translate([xdist+10, ydist/2, -20])
    rotate([0, 0, 90])
        LeadMount();
translate([xdist+10, ydist/2, -20-5])
    rotate([0, 0, 90])
        linear_extrude(height = 5)
            LeadMountPlate();

echo((xdist+40));
echo((ydist+40));
echo(10.75+10+6+5+14.25+(20-14.25)+2);
echo(27-16+10+6+15+4);




//translate([xdist/2-214/2-46, ydist/2, -100])
//    cylinder(h = 400, r = 6, $fn = 30, center = true);
//
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
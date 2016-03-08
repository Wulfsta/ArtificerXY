// Ideal bed

Bed();

module Bed()
{
    vec = [214, -214];
    alter = [1, -1];
    difference()
    {
        union()
        {
            square([214, 214], center = true);
            hull()
            {
                translate([214/2+29/2, 0])
                    square([29, 2*29*(2*cos(45)-1)], center = true);
                translate([214/2-1, 0])
                    square([2, 2*29*2*cos(45)], center = true);
            }
            hull()
            {
                translate([-214/2-29/2, 0])
                    square([29, 2*29*(2*cos(45)-1)], center = true);
                translate([-214/2+1, 0])
                    square([2, 2*29*2*cos(45)], center = true);
            }
        }
        for (i = vec)
            for (j = vec)
                translate([(i / abs(i) * (abs(i)-5))/2, (j / abs(j) * (abs(j)-5))/2])
                    circle(r = 1.5, $fn = 90);
        for (i = vec)
            for (j = vec)
                translate([(i / abs(i) * (abs(i)-60))/2, (j / abs(j) * (abs(j)-10))/2])
                    circle(r = 2, $fn = 90);
        for (i = vec)
            for (j = vec)
                translate([(i / abs(i) * (abs(i)-10))/2, (j / abs(j) * (abs(j)-60))/2])
                    circle(r = 2, $fn = 90);
        translate([0, 209/2])
            circle(r = 1.5, $fn = 90);
        for (i = vec)
            translate([i/abs(i)*(abs(i)/2+29/2), 0])
                circle(r = 5, $fn = 90);
        for (k = vec)
            for (i = alter)
                for (j = alter)
                    translate([k/abs(k)*(abs(k)/2+29/2)+21/2*i*cos(60), 21/2*j*sin(60)])
                        circle(r = 3.4/2, $fn = 90);
    }
}
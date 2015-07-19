// a nut shape that takes height and width across flats as input.

nutShape(6, 3);

module nutShape(w, h)
{
    rotate_extrude($fn = 6)
        square([((w / 2) / (cos(30))), h], center = false);
}
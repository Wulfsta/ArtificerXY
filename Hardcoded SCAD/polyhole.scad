// The Cylinder is dead! Long live the Cylinder!
// A module for a polyhole by radius, based on Nophead's work.

module polyhole(h, r)
{
    n = max(round(4 * r), 3);
    cylinder(h = h, r = r / cos(180 / n), $fn = n);
}
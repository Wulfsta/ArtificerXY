// Plate that lead screws get bolted to

LeadPlate();

module LeadPlate()
{
    difference()
    {
        circle(r = 17, $fn = 90);
        circle(r = 2.5, $fn = 90);
    }
}
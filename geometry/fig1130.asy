import geometry;
size(8cm,0);

// currentcoordsys=cartesiansystem((2,1),i=(1,0.5),j=(-0.25,0.75));
// show(currentcoordsys);

triangle t=rotate(-20)*triangle((-1,0), (2,0), (0,2));
drawline(t, linewidth(bp));
label(t,alignFactor=4);

line bab=bisector(t.AB);
draw(bab, blue);
perpendicularmark(t.AB,bab,quarter=4);

line bac=bisector(t.AC);
draw(bac, blue);
perpendicularmark(t.AC,bac,quarter=4);

line bbc=bisector(t.BC);
draw(bbc, blue);
perpendicularmark(t.BC,bbc,quarter=4);

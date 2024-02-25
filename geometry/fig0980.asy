import geometry;
size(6cm,0);

// currentcoordsys=cartesiansystem((1,2),i=(1,0.5),j=(-0.5,.75));
// show(currentcoordsys, xpen=invisible);

point A=(-1,1);
dot("$A$",A,S);

arc a=arc(circle(A,2), 45, 270);
draw(a,linewidth(3mm),ArcArrow(5mm));

/*<asyxml><view file="modules/geometry.asy" type="arc" signature="arc(explicit arc,abscissa,abscissa)"/></asyxml>*/
draw(arc(a,angabscissa(135),angabscissa(225)),1mm+red,ArcArrow(3mm),TrueMargin(0,0.5mm));

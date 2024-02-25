import geometry;
size(10cm);

point C=(4,2);
dot("$C$",C,E+NE,red);

hyperbola h=hyperbola(C,1.5,1,-20);
draw(h, linewidth(bp));

/*<asyxml><view file="modules/geometry.asy" type="line" signature="tangent(hyperbola,abscissa)"/></asyxml>*/
line l=tangent(h,angabscissa(85));
draw(l, grey);
dot(intersectionpoints(h,l));

l=tangent(h,angabscissa(0,fromCenter));
draw(l, grey);
dot(intersectionpoints(h,l));

// Enlarge the bounding box of the current picture.
draw(box((-1,-0.5), (9,4)), invisible);

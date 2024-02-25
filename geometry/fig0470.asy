import geometry;
size(12cm);

// currentcoordsys=cartesiansystem((0,0),i=(1,0.5),j=(-0.5,.75));
// show(currentcoordsys, xpen=invisible);

point F1=(0,0);
dot("$F1$",F1,NW);
point F2=(-0.25,0.5);
dot("$F2$",F2,SE);

parabola p=parabola(F1, 0.1, 120);
draw(p, bp+red);

parabola pp=parabola(F2, 0.06, 280);
draw(pp, bp+blue);

abscissa x=angabscissa(180);
dot(point(p,x));
/*<asyxml><view file="modules/geometry.asy" type="line" signature="tangent(parabola,abscissa)"/></asyxml>*/
draw(tangent(p,x), 0.8*red);

point[] P=intersectionpoints(p,pp);
dot(P);

/*<asyxml><view file="modules/geometry.asy" type="line[]" signature="tangents(parabola,point)"/></asyxml>*/
draw(tangents(p,P[0]), 0.8*red);
draw(tangents(pp,P[0]), 0.8*blue);

// Enlarge the bounding box
draw(box((-1,-0.4), (0.5,0.6)),invisible);

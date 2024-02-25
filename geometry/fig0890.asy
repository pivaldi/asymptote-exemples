import geometry;
size(12cm,0);

// currentcoordsys=cartesiansystem((1,2),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(3.5,0.5);
dot("$A$",A,SW,red);

arc C=arc(ellipse(A,2,1,-30),90,270,fromCenter,CCW);
real l=arclength(C);

draw(C,Arrow);
draw(complementary(C),grey+dashed);
distance("$R=2$",A,point(C.el,0),0);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="curpoint(arc,real)"/></asyxml>*/
dot("curpoint(C, 0)", curpoint(C,0),E);
dot("curpoint(C, l/4)", curpoint(C,l/4),0.5N+E);
dot("curpoint(C, -l/4)", curpoint(C,-l/4));

dot("curpoint(C, l/2)", point(C,curabscissa(l/2)),W); // point(C,curabscissa(l/2)) is similar to curpoint(C,pi)
dot("curpoint(C, l)", curpoint(C,l), SW);
dot("curpoint(C, 3*l/2)", curpoint(C,3*l/2),E);

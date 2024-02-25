import geometry;
size(10cm,0);

// currentcoordsys=cartesiansystem((1,2),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(3.5,0.5);
dot("$A$",A,S,red);

arc C=arc(circle(A,2),45,270,CCW);
draw(C,Arrow);
draw(complementary(C),grey+dashed);
/*<asyxml><view file="modules/geometry.asy" type="void" signature="distance(picture pic,Label,point,point,bool,real,pen,pen,arrow)"/></asyxml>*/
distance("$R=2$",A,point(C.el,0),0);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="curpoint(arc,real)"/></asyxml>*/
dot("curpoint(C, 0)", curpoint(C,0),E);
dot("curpoint(C, pi/2)", curpoint(C,pi/2),N);
dot("curpoint(C, -pi/2)", curpoint(C,-pi/2));

// dot("curpoint(C, pi)", point(C,curabscissa(pi)),W); // OR curpoint(C,pi)
dot("curpoint(C, pi)", curpoint(C,pi),W);

dot("curpoint(C, 2*pi)", curpoint(C,2*pi),SW);
dot("curpoint(C, 3*pi)", curpoint(C,3*pi),E);

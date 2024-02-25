import geometry;
size(11cm,0);

currentcoordsys=cartesiansystem((0,0),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(2,-2);
dot("$A$",A,S,red);

circle C=circle(A,2);
draw(C);
distance("$R=2$",A,point(C,0),0);

/*<asyxml><view file="modules/geometry.asy" type="pair" signature="curpoint(explicit circle,real)"/></asyxml>*/
dot("curpoint(C, pi/2)", curpoint(C,pi/2),NE);

dot("curpoint(C, -pi/2)", curpoint(C,-pi/2));

/*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="curabscissa(real)"/></asyxml>*/
dot("curpoint(C, pi)", point(C,curabscissa(pi)),NW);
// point(C,curabscissa(pi)) can be replaced by curpoint(C,pi)

dot("curpoint(C, 2*pi)", curpoint(C,2*pi),W);
dot("curpoint(C, 3*pi)", curpoint(C,3*pi),SE);
dot("curpoint(C, 4.25*pi)", curpoint(C,4.25*pi),E);

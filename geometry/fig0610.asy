import geometry;
size(12cm,0);

currentcoordsys=cartesiansystem((0,0),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(4,2);

ellipse el=ellipse(A,3,2,30);
draw(el);
dot("$C$",el.C,S,red);


/*<asyxml><view file="modules/geometry.asy" type="pair" signature="curpoint(explicit ellipse,real)"/></asyxml>*/
dot("curpoint(el, 0)", curpoint(el,0), E);

real L=arclength(el);


dot("curpoint(el, L/8)", curpoint(el,L/8),NW);

dot("curpoint(el, -L/8)", curpoint(el,-L/8));

/*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="curabscissa(real)"/></asyxml>*/
dot("point(el,curabscissa(L/4))", point(el,curabscissa(L/4)),NW);
// point(el,curabscissa(pi)) can be replaced by curpoint(el,pi)

dot("curpoint(el, L/2)", curpoint(el,L/2),W);
dot("curpoint(el, 3*L/4)", curpoint(el,3*L/4),SE);
dot("curpoint(el, 9*L/8)", curpoint(el,9*L/8),4N+4W);

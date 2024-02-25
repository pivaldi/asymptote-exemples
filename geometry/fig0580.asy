import geometry;
size(12cm,0);

currentcoordsys=cartesiansystem((0,0),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(2,-1.5);
dot("$A$",A,S,red);

ellipse el=ellipse(A,3,1,20);
draw(el);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="relpoint(explicit ellipse,real)"/></asyxml>*/
dot("relpoint(el, 0)",relpoint(el,0),E);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="point(ellipse,abscissa)"/></asyxml>*/
dot("relpoint(el, 0.25)",point(el,Relative(0.25)),NW);
// point(el,Relative(0.25)) can be replaced by relpoint(el,0.25) OR point(el,relabscissa(0.25))

dot("relpoint(el, 0.5)",relpoint(el,0.5),W);
dot("relpoint(el, 0.75)",relpoint(el,0.75),SE);
dot("relpoint(el, 1.125)",relpoint(el,1.125),NW);

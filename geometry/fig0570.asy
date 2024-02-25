import geometry;
size(10cm,0);

currentcoordsys=cartesiansystem((0,0),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(2,-2);
dot("$A$",A,S,red);

circle C=circle(A,2);
draw(C);
/*<asyxml><view file="modules/geometry.asy" type="void" signature="distance(picture pic,Label,point,point,bool,real,pen,pen,arrow)"/></asyxml>*/
distance("$R=2$",A,point(C,0),0);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="relpoint(explicit circle,real)"/></asyxml>*/
dot("relpoint(C, 0)",relpoint(C,0),E);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="point(circle,abscissa)"/></asyxml>*/
dot("relpoint(C, 0.25)",point(C,Relative(0.25)),NW);
// point(C,Relative(0.25)) can be replaced by relpoint(C,0.25) OR point(C,relabscissa(0.25))

dot("relpoint(C, 0.5)",relpoint(C,0.5),W);
dot("relpoint(C, 0.75)",relpoint(C,0.75),SE);
dot("relpoint(C, 1.125)",relpoint(C,1.125),NE);

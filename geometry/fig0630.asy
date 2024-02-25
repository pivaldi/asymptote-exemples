import geometry;
size(11cm,0);

currentcoordsys=cartesiansystem((0,0),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(2,-2);
dot("$A$",A,S,red);

circle C=circle(A,2);
draw(C);
distance("$R=2$",A,point(C,0),0);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="angpoint(explicit circle,real)"/></asyxml>*/
dot("angpoint(C, 90)", angpoint(C,90),NW);

/*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="angabscissa(real,polarconicroutine)"/></asyxml>*/
dot("angpoint(C, 180)", point(C,angabscissa(180)), W);
// point(C,angabscissa(180)) can be replaced by angpoint(C,180)

dot("angpoint(C, 270)", angpoint(C,270),SE);
dot("angpoint(C, 405)", angpoint(C,405),NE);
dot("angpoint(C, -45)", angpoint(C,-45),SE);

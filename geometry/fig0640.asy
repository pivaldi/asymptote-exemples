import geometry;
size(12cm,0);

currentcoordsys=cartesiansystem((0,0),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(4,2);

ellipse el=ellipse(A,3,2,20);
draw(el);
dot("$C$",el.C,2W,red);

dot("$F_1$",el.F1,S);
dot("$F_2$",el.F2,S);


/*<asyxml><view file="modules/geometry.asy" type="point" signature="angpoint(explicit ellipse,real,polarconicroutine)"/></asyxml>*/
point P=angpoint(el, 0);
dot("angpoint(el, 0)", P,E);
draw(el.F1--P);

point P=angpoint(el, 90);
dot("angpoint(el, 90)", P,NW);
draw(el.F1--P);

point P=angpoint(el, 90, fromCenter);
dot("angpoint(el,90,fromCenter)", P,NW);
draw(el.C--P);


/*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="angabscissa(real,polarconicroutine)"/></asyxml>*/
dot("angpoint(el, 180)", point(el,angabscissa(180)), W);
// point(el,angabscissa(180)) can be replaced by angpoint(el,180)

dot("angpoint(el, 270)", angpoint(el,270),SE);
dot("angpoint(el, 370)", angpoint(el,370),NE);
dot("angpoint(el, -45)", angpoint(el,-45),SE);

point P=angpoint(el, -45, fromCenter);
dot("angpoint(el,-45,fromCenter)", P,S);
draw(el.C--P);

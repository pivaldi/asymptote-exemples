import geometry;
size(12cm);

// currentcoordsys=cartesiansystem((0,0),i=(1,0.5),j=(-0.5,.75));
coordsys R=currentcoordsys;
show(R);

point C=(4,2);
dot("$C$", C, NW, red);

hyperbola h=hyperbola(C, 2, 1.5, -10);
draw(h);

///////////////////////////////////////
currentpolarconicroutine=fromCenter;//
/////////////////////////////////////

coordsys Rp=canonicalcartesiansystem(h);
show(Label("$O'$", align=SW,blue),
     Label("$\vec{u}$",blue),
     Label("$\vec{v}$",blue),
     Rp, ipen=blue);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="angpoint(explicit hyperbola,real,polarconicroutine)"/></asyxml>*/
dot("angpoint(h, 0)", angpoint(h,0), E+NE);
dot(rotate(80)*"angpoint(h, 180)", angpoint(h,180),E);

draw(arcfromcenter(h,0,30), bp+red);

// point(p,angbscissa(150)) can be replaced by angpoint(p,150)
dot("angpoint(h, 150)", point(h, angabscissa(150)), E);

point P=point(h, angabscissa(210));
dot("angpoint(h, 210)", P, E);

point P=angpoint(h, 30);
dot("angpoint(h, 30)", P, E);

segment s=segment(C, P);
draw(s);
markangle("$30^\circ$", Ox(Rp),(line) s, radius=1.5cm, Arrow);

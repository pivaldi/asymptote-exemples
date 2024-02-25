import geometry;
size(10cm);

point C=(4,2);
dot("$C$",C,E+NE,red);

hyperbola h=hyperbola(C,1.5,1,-20);
draw(h, linewidth(bp));

coordsys R=currentcoordsys;
show(R);

coordsys Rp=canonicalcartesiansystem(h);
show(Label("$O'$",align=SW,blue), Label("$\vec{u}$",blue), Label("$\vec{v}$",blue), Rp, ipen=blue);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="angpoint(explicit hyperbola,real,polarconicroutine)"/></asyxml>*/
dot(rotate(70)*"angpoint(h, 180)",angpoint(h,180),E);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="point(hyperbola,abscissa)"/></asyxml>*/
point P=point(h,angabscissa(55));
// point(h,angbscissa(0.5)) can be replaced by angpoint(h,0.5)
dot("angpoint(h, 55)",P,SE);

/*<asyxml><view file="modules/geometry.asy" type="path" signature="arcfromfocus(conic,real,real,int,bool)"/></asyxml>*/
draw(arcfromfocus(h,55,180), bp+red);

segment s=segment(h.F1,P);
draw(s);
dot("$F_1$",h.F1,N+NW);
line l=line(h.F1,h.F1-Rp.i);
markangle("$55^\circ$",l,(line)s,Arrow);

dot("angpoint(p, -50)",angpoint(h,-50),W);
dot("angpoint(p, -55)",angpoint(h,-55),NE);

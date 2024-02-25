import geometry;
size(10cm);

point F=(1,0.5);
dot("$F$",F,E,red);

parabola p=parabola(F,0.2,110);

draw(p);

coordsys R=currentcoordsys;
show(R);

coordsys Rp=canonicalcartesiansystem(p);
show(Label("$O'$",align=NW+W,blue), Label("$\vec{u}$",blue), Label("$\vec{v}$",blue), Rp, ipen=blue);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="angpoint(explicit parabola,real)"/></asyxml>*/
dot("angpoint(p, 180)",angpoint(p,180),SE+E);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="point(parabola,abscissa)"/></asyxml>*/
point P=point(p,angabscissa(55));
// point(p,angbscissa(0.5)) can be replaced by angpoint(p,0.5)
dot("angpoint(p, 55)",P,NE);

segment s=segment(F,P);
draw(s);
line l=line(F,F+Rp.i);
markangle("$"+(string)degrees(l,s)+"^\circ$",l,(line)s,Arrow);

dot("angpoint(p, -45)",angpoint(p,-45),W);
dot("angpoint(p, -55)",angpoint(p,-55),W);

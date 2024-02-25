size(8cm,0);
import geometry;

show(currentcoordsys);

pair a=(0,0.5), b=(1,0.5);
point A=a, B=b;

dot("$A$",A);
dot("$B$",B);

/*<asyxml><view file="modules/geometry.asy" type="coordsys" signature="cartesiansystem(pair,pair,pair)"/></asyxml>*/
currentcoordsys=cartesiansystem((0.5,0.5), i=(0.7,0.7), j=(-0.7,0.7));
show("$O'$", "$\vec{u'}$", "$\vec{v'}$", currentcoordsys, xpen=invisible);

point Ap=a;
/*<asyxml><view file="modules/geometry.asy" type="point" signature="point(coordsys,explicit point)"/></asyxml>*/
point Bp=point(currentcoordsys,B); // same as 'point Bp=b;'

dot("$A'$",Ap);
dot("$B'$",Bp);
dot("$M$",(Ap+Bp)/2);

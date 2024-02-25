size(8cm,0);
import geometry;

coordsys R=defaultcoordsys;
show(R);

coordsys Rp=cartesiansystem((0.5,0.5), i=(0.35,0.35), j=(-0.35,0.35));
show("$O'$", "$\vec{\imath'}$", "$\vec{\jmath'}$", Rp, ipen=blue, xpen=invisible);

coordsys Rpp=cartesiansystem((-1,-0.5),
                                      i=rotate(-90)*(0.35,0.35),
                                      j=rotate(-90)*(-0.35,0.35));
show("$O''$", "$\vec{\imath''}$", "$\vec{\jmath''}$", Rpp, ipen=green, xpen=invisible);


pair m=(1,1);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="point(coordsys,pair,real)"/></asyxml>*/
dot("",point(R,m),red); // Same as 'dot("",m,red);'
dot("",point(Rp,m),blue);

point M=m;
/*<asyxml><view file="modules/geometry.asy" type="point" signature="point(coordsys,explicit point,real)"/></asyxml>*/
dot("",point(Rpp,M),green); // Works also with 'point'

pair p=(-0.75,0.75);
point P=point(R,(-0.75,0.75));

dot("$P$",P,2E,4mm+red);

// There are two methods for changing
// the coordinate system of a point (or a pair)

/*<asyxml><view file="modules/geometry.asy" type="pair" signature="/(pair,coordsys)"/></asyxml>*/
dot("$P'$",point(Rp,p/Rp),2S,3mm+blue); // Necessary for 'pair'
dot("$P'$",point(Rp,P/Rp),2N,3mm+blue); // but works with 'point' by casting.

/*<asyxml><view file="modules/geometry.asy" type="point" signature="changecoordsys(coordsys,point)"/></asyxml>*/
dot("$P''$",changecoordsys(Rpp,P),2W,1.5mm+green); // Useful for 'point'.

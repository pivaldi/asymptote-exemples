import geometry;
unitsize(2cm);

// currentcoordsys=cartesiansystem((0,0),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(-2.5,2);
dot("$A$",A,S);
point B=A+(cos(0.5),cos(1));
dot("$B$",B,S);

point F=(-1,0.5);
dot("$F$",F,NW);

parabola pb=parabola(F,0.2,130);
draw(pb);
line l=line(A,B);
draw(l);
point M=intersectionpoints(l,pb)[0];
point P=intersectionpoints(l,pb)[1];

/*<asyxml><view file="modules/geometry.asy" type="void" signature="dot(picture,Label,explicit point,align,string,pen)"/></asyxml>*/
dot("",M,2E,linewidth(2mm));
dot("$M$",M,2W);
dot("",P,2E,linewidth(2mm));
dot("$P$",P,2W);

pair p=A-(4,2.5);
transform t=shift((0,-0.3));
transform T=shift((4,0));
real x;

/*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="angabscissa(parabola,point)"/></asyxml>*/
x=angabscissa(pb,M).x;
label("angabscissa(pb,M).x=$"+(string)x+"^\circ$",p,E);
dot(angpoint(pb,x),1mm+red);
x=angabscissa(pb,P).x;
label("angabscissa(pb,P).x=$"+(string)x+"^\circ$",T*p,E);
dot(angpoint(pb,x),1mm+red);

// p=t*p;
// /*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="curabscissa(parabola,point)"/></asyxml>*/
// x=curabscissa(pb,M).x;
// dot(curpoint(pb,x),1mm+red);
// label("curabscissa(pb,M).x="+(string)x,p,E);
// x=curabscissa(pb,P).x;
// label("curabscissa(pb,P).x="+(string)x,T*p,E);
// dot(curpoint(pb,x),1mm+red);

// p=t*p;
// /*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="nodabscissa(parabola,point)"/></asyxml>*/
// x=nodabscissa(pb,M).x;
// label("nodabscissa(pb,M).x="+(string)x,p,E);
// dot(point(pb,x),1mm+red);
// x=nodabscissa(pb,P).x;
// label("nodabscissa(pb,P).x="+(string)x,T*p,E);
// dot(point(pb,x),1mm+red);

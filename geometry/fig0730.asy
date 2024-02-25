import geometry;
unitsize(2cm);

// currentcoordsys=cartesiansystem((0,0),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(-2,2);
dot("$A$",A,S);
point B=A+(cos(0.5),cos(1));
dot("$B$",B,S);


circle c=circle(A,2);
draw(c);

line l=line(A,B);
draw(l);
point M=intersectionpoints(l,c)[0];
point P=intersectionpoints(l,c)[1];

/*<asyxml><view file="modules/geometry.asy" type="void" signature="dot(picture,Label,explicit point,align,string,pen)"/></asyxml>*/
dot("",M,2E,linewidth(2mm));
dot("$M$",M,2W);
dot("",P,2E,linewidth(2mm));
dot("$P$",P,2W);

pair p=A-(4,2.5);
transform t=shift((0,-0.3));
transform T=shift((4,0));
real x;

/*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="angabscissa(circle,point)"/></asyxml>*/
x=angabscissa(c,M).x;
label("angabscissa(c,M).x=$"+(string)x+"^\circ$",p,E);
dot(angpoint(c,x),1mm+red);
x=angabscissa(c,P).x;
label("angabscissa(c,P).x=$"+(string)x+"^\circ$",T*p,E);
dot(angpoint(c,x),1mm+red);

p=t*p;
/*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="curabscissa(circle,point)"/></asyxml>*/
x=curabscissa(c,M).x;
dot(curpoint(c,x),1mm+red);
label("curabscissa(c,M).x="+(string)x,p,E);
x=curabscissa(c,P).x;
label("curabscissa(c,P).x="+(string)x,T*p,E);
dot(curpoint(c,x),1mm+red);

p=t*p;
/*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="nodabscissa(circle,point)"/></asyxml>*/
x=nodabscissa(c,M).x;
label("nodabscissa(c,M).x="+(string)x,p,E);
dot(point(c,x),1mm+red);
x=nodabscissa(c,P).x;
label("nodabscissa(c,P).x="+(string)x,T*p,E);
dot(point(c,x),1mm+red);

p=t*p;
/*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="relabscissa(circle,point)"/></asyxml>*/
x=relabscissa(c,M).x;
label("relabscissa(c,M).x="+(string)x,p,E);
dot(relpoint(c,x),1mm+red);
x=relabscissa(c,P).x;
label("relabscissa(c,P).x="+(string)x,T*p,E);
dot(relpoint(c,x),1mm+red);

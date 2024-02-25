import geometry;
unitsize(2cm);
linemargin=0.5cm;

// currentcoordsys=cartesiansystem((1,2),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(3.5,0.75);
dot("$A$",A,S);
point B=A+(cos(0.5),cos(1));
dot("$B$",B,S);


arc c=rotate(45,B)*xscale(2,A)*arc(circle(A,2), 45, 270, CCW);
arc cc=complementary(c);
draw(c,Arrow);
draw(cc,dashed+grey);

line l=line(A,B);
draw(l);
point M=intersectionpoints(l,c)[0];
point P=intersectionpoints(l,cc)[0];

dot("", M, 2E);
dot("$M$", M, 2W, linewidth(2mm));
dot("", P, 2E);
dot("$P$", P, 2W, linewidth(2mm));
dot("$O$", point(c,0), SE);

point p=A-(4,2.5);
transform t=shift((0,-0.3));
transform T=shift((4,0));
real x;

/*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="angabscissa(arc,point)"/></asyxml>*/
x=angabscissa(c,M).x;
label("angabscissa(c,M).x=$"+(string)x+"^\circ$",p,E);
dot(angpoint(c,x),1mm+red);
x=angabscissa(c,P).x;
label("angabscissa(c,P).x=$"+(string)x+"^\circ$",T*p,E);
dot(angpoint(c,x),1mm+red);

p=t*p;
/*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="curabscissa(arc,point)"/></asyxml>*/
x=curabscissa(c,M).x;
dot(curpoint(c,x),1mm+red);
label("curabscissa(c,M).x="+(string)x,p,E);
x=curabscissa(c,P).x;
label("curabscissa(c,P).x="+(string)x,T*p,E);
dot(curpoint(c,x),1mm+red);

p=t*p;
/*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="nodabscissa(arc,point)"/></asyxml>*/
x=nodabscissa(c,M).x;
label("nodabscissa(c,M).x="+(string)x,p,E);
dot(point(c,x),1mm+red);
label("nodabscissa(c,P).x= \scriptsize{ERROR (point is not on the arc!)}",T*p,E);

p=t*p;
/*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="relabscissa(arc,point)"/></asyxml>*/
x=relabscissa(c,M).x;
label("relabscissa(c,M).x="+(string)x,p,E);
dot(relpoint(c,x),1mm+red);
x=relabscissa(c,P).x;
label("relabscissa(c,P).x="+(string)x,T*p,E);
dot(relpoint(c,x),1mm+red);

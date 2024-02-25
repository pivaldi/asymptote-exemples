import geometry;
unitsize(2cm);

// currentcoordsys=cartesiansystem((0,0),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(-2,2);
dot("$A$",A,S);
point B=A+(cos(0.5),cos(1));
dot("$B$",B,S);


ellipse el=ellipse(A,3,2,0);
draw(el);
line l=line(A,B);
draw(l);
point M=intersectionpoints(l,el)[0];
point P=intersectionpoints(l,el)[1];

/*<asyxml><view file="modules/geometry.asy" type="void" signature="dot(picture,Label,explicit point,align,string,pen)"/></asyxml>*/
dot("",M,2E,linewidth(2mm));
dot("$M$",M,2W);
dot("",P,2E);
dot("$P$",P,2W,linewidth(2mm));

pair p=A-(4,2.5);
transform t=shift((0,-0.3));
transform T=shift((4,0));
real x;

/*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="angabscissa(ellipse,point,polarconicroutine)"/></asyxml>*/
x=angabscissa(el,M).x;
label("angabscissa(el,M).x=$"+(string)x+"^\circ$",p,E);
dot(angpoint(el,x),1mm+red);
x=angabscissa(el,P).x;
label("angabscissa(el,P).x=$"+(string)x+"^\circ$",T*p,E);
dot(angpoint(el,x),1mm+red);

p=t*p;
/*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="curabscissa(ellipse,point)"/></asyxml>*/
x=curabscissa(el,M).x;
dot(curpoint(el,x),1mm+red);
label("curabscissa(el,M).x="+(string)x,p,E);
x=curabscissa(el,P).x;
label("curabscissa(el,P).x="+(string)x,T*p,E);
dot(curpoint(el,x),1mm+red);

p=t*p;
/*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="nodabscissa(ellipse,point)"/></asyxml>*/
x=nodabscissa(el,M).x;
label("nodabscissa(el,M).x="+(string)x,p,E);
dot(point(el,x),1mm+red);
x=nodabscissa(el,P).x;
label("nodabscissa(el,P).x="+(string)x,T*p,E);
dot(point(el,x),1mm+red);

p=t*p;
/*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="relabscissa(ellipse,point)"/></asyxml>*/
x=relabscissa(el,M).x;
label("relabscissa(el,M).x="+(string)x,p,E);
dot(relpoint(el,x),1mm+red);
x=relabscissa(el,P).x;
label("relabscissa(el,P).x="+(string)x,T*p,E);
dot(relpoint(el,x),1mm+red);

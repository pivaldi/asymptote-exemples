import geometry;
size(8cm);

currentcoordsys=cartesiansystem((1,2),i=(1,0.5),j=(-0.5,.75));
// show(currentcoordsys, xpen=invisible);

point A=(-1,0) ; dot("$A$",A,S);
point B=(1,1)  ; dot("$B$",B,S);
point C=(0,1)  ; dot("$C$",C,SW);
point D=(1,-1) ; dot("$D$",D,SW);

circle c=circle(origin(),2);

line l1=line(A,B); draw(l1);
line l2=line(C,D); draw(l2);

point[] J=intersectionpoints(l1,c);
point[] K=intersectionpoints(l2,c);

/*<asyxml><view file="modules/geometry.asy" type="arc" signature="arc(ellipse,point,point,bool)"/></asyxml>*/
draw(arc(c,J[0],K[0]),1mm+0.8yellow);
draw(arc(c,K[0],J[1]),1mm+0.8red);
/*<asyxml><view file="modules/geometry.asy" type="arc" signature="arc(ellipse,abscissa,abscissa,bool)"/></asyxml>*/
draw(arc(c,angabscissa(c,J[1]),angabscissa(c,K[1])),1mm+0.8blue);
draw(arc(c,angabscissa(c,K[1]),angabscissa(c,J[0])),1mm+0.8green);

dot("$J_0$",J[0],2W); dot("$J_1$",J[1],2N);
dot("$K_0$",K[0],2E) ; dot("$K_1$",K[1],2N+W);

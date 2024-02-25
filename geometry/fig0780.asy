import geometry;
size(8cm);

// currentcoordsys=cartesiansystem((1,2),i=(1,0.5),j=(-0.5,.75));
// show(currentcoordsys, xpen=invisible);

point A=(-1,0) ; dot("$A$",A,S);
point B=(1,1)  ; dot("$B$",B,S);
point C=(0,1)  ; dot("$C$",C,SW);
point D=(1,-1) ; dot("$D$",D,SW);

ellipse el=ellipse((point)(0,0.5),2,1);

line l1=line(A,B); draw(l1);
line l2=line(C,D); draw(l2);

point[] J=intersectionpoints(l1,el);
point[] K=intersectionpoints(l2,el);

/*<asyxml><view file="modules/geometry.asy" type="arc" signature="arc(ellipse,point,point,bool)"/></asyxml>*/
draw(arc(el, J[0],K[0]), 1mm+0.8yellow);
draw(arc(el, K[0],J[1]), 1mm+0.8red);
/*<asyxml><view file="modules/geometry.asy" type="arc" signature="arc(ellipse,abscissa,abscissa,bool)"/></asyxml>*/
draw(arc(el,angabscissa(el,J[1]), angabscissa(el,K[1])), 1mm+0.8blue);
draw(arc(el,angabscissa(el,K[1]), angabscissa(el,J[0])), 1mm+0.8green);

dot("$J_0$", J[0], 2N); dot("$J_1$", J[1], 2S);
dot("$K_0$", K[0], 2NE) ; dot("$K_1$", K[1], 2dir(-35));

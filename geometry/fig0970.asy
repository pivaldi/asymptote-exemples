import geometry;
size(8cm);

// currentcoordsys=cartesiansystem((1,2),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(-1,0) ; dot("$A$",A,S);
point B=(1,1)  ; dot("$B$",B,S);
point C=(0,0)  ;
point D=(1,-1) ; dot("$D$",D,SW);

arc c=arc(ellipse(C,2,1,20), 0, 270);
draw(complementary(c),dashed+grey);

line l1=line(A,B); draw(l1);
line l2=line(C,D); draw(l2);

point[] J=intersectionpoints(l1,c);
point[] K=intersectionpoints(l2,c);

/*<asyxml><view file="modules/geometry.asy" type="arc" signature="arc(explicit arc,point,point)"/></asyxml>*/
draw(arc(c,J[0],K[0]),2mm+0.8yellow);
draw(arc(c,K[0],J[1]),2mm+0.8red);
/*<asyxml><view file="modules/geometry.asy" type="arc" signature="arc(explicit arc,abscissa,abscissa)"/></asyxml>*/
draw(arc(c,relabscissa(c,J[1]),relabscissa(1)),2mm+0.8green);
draw(arc(c,relabscissa(0),relabscissa(c,J[0])),2mm+0.8blue);

dot("$J_0$",J[0],2N);
dot("$J_1$",J[1],N+2W);
dot("$K_0$",K[0],2N);

draw(c, 1mm+white);

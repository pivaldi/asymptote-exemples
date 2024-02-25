import geometry;
size(10cm,0);

// currentcoordsys=cartesiansystem((1,2),i=(1,0.5),j=(-0.5,.75));
// show(currentcoordsys, xpen=invisible);

real R=2;

point A=(1,1.5);
dot("$A$",A,S,red);
point B=A+(2.5,1);
dot("$B$",B,E,blue);

arc a=arc(ellipse(A,R,R/2,30),-40,180);
// ellispenodesnumberfactor=400;
arc b=arc(ellipse(B,2R,R/2,-10),-30,180);

draw(a,red);
draw(b,blue);

point M=intersectionpoints(a,b)[0];
dot(M);

/*<asyxml><view file="modules/geometry.asy" type="line" signature="tangent(explicit arc,point)"/></asyxml>*/
draw(tangent(a,M), grey);
draw(tangent(b,M), grey);

/*<asyxml><view file="modules/geometry.asy" type="line" signature="tangent(explicit arc,abscissa)"/></asyxml>*/
draw(tangent(a,angabscissa(45)), grey);

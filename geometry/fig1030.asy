import geometry;
size(8cm,0);

currentcoordsys=cartesiansystem((1,2),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

real R=2;

point A=(1,1.5);
dot("$A$",A,S,red);
point B=A+(2,1);
dot("$B$",B,S,blue);

arc a=arc(circle(A,R),-40,180);
arc b=arc(circle(B,R),-45,220);

draw(a,red);
draw(b,blue);

point M=intersectionpoints(a,b)[0];
dot(M);

/*<asyxml><view file="modules/geometry.asy" type="line" signature="tangent(explicit arc,point)"/></asyxml>*/
draw(tangent(a,M), grey);
draw(tangent(b,M), grey);

/*<asyxml><view file="modules/geometry.asy" type="line" signature="tangent(explicit arc,abscissa)"/></asyxml>*/
draw(tangent(a,angabscissa(45)), grey);

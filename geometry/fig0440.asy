import geometry;
size(10cm,0);

// currentcoordsys=cartesiansystem((0,0),i=(1,0.25),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(-1,-1);
point B=(0.75,0.5);
dot("$A$",A,NW,red);
dot("$B$",B,N,red);

circle c1=circle(A,1.5);
circle c2=circle(B,2);
draw(c1^^c2);

point[] inter=intersectionpoints(c1,c2);
dot("$M$", inter[0], 2NW, red);

/*<asyxml><view file="modules/geometry.asy" type="line" signature="tangent(circle,point)"/></asyxml>*/
draw(tangent(c1,inter[0]), grey);
draw(tangent(c2,inter[0]), grey);

/*<asyxml><view file="modules/geometry.asy" type="line" signature="tangent(circle,abscissa)"/></asyxml>*/
draw(tangent(c2,angabscissa(135)), grey);


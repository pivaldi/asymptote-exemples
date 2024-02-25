import geometry;
size(10cm,0);

// currentcoordsys=cartesiansystem((0,0),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(-1,-1);
point B=(0.75,0.5);
dot("$A$",A,NW,red);
dot("$B$",B,N,red);

ellipse el1=ellipse(A,2,1.5);
ellipse el2=ellipse(B,3,2);
draw(el1);
draw(el2,Arrow);

point[] inter=intersectionpoints(el1,el2);
dot("$M$", inter[0], 2NW, red);

/*<asyxml><view file="modules/geometry.asy" type="line[]" signature="tangents(ellipse,point)"/></asyxml>*/
draw(tangents(el1,inter[0]), grey);
draw(tangents(el2,inter[0]), grey);

/*<asyxml><view file="modules/geometry.asy" type="line" signature="tangent(ellipse,abscissa)"/></asyxml>*/
draw(tangent(el2,angabscissa(90)), grey);


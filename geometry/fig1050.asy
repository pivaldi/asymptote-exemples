import geometry;
size(8cm,0);

// currentcoordsys=cartesiansystem((1,2),i=(1,0.5),j=(-0.5,.75));
// show(currentcoordsys, xpen=invisible);

point A=(0.25,0.25);
point B=A+(1,0.25);
dot("$A$",A,S,red);
dot("$B$",B,N,red);

segment s=segment(A,B);
line bis=bisector(s);

draw(s,StickIntervalMarker(2,2));
draw(bis);

/*<asyxml><view file="modules/geometry.asy" type="path" signature="compassmark(pair,pair,real,real)"/></asyxml>*/
draw(compassmark(A, point(bis,0.75), position=0.25,angle=25), grey);
draw(compassmark(B, point(bis,0.75), position=0.75,angle=25), grey);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="point(line,real)"/></asyxml>*/
draw(compassmark(A, point(bis,0.25), position=0.5,angle=15), grey);
draw(compassmark(B, point(bis,0.25), position=0.5,angle=15), grey);

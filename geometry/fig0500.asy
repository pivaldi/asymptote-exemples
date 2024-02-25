import geometry;
size(10cm,0);

currentcoordsys=cartesiansystem((0,0),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(2.5,-1);
point B=A+(3,1);
dot("$A$",A,SW);
dot("$B$",B,2N+0.5W);

circle c1=circle(A,1.5);
draw(c1);

/*<asyxml><view file="modules/geometry.asy" type="line[]" signature="tangents(circle,point)"/></asyxml>*/
line[] tgt=tangents(c1,B);
draw(tgt,red);
/*<asyxml><view file="modules/geometry.asy" type="circle" signature="circle(point,point)"/></asyxml>*/
draw(circle(B,A),grey);

// dot(intersectionpoints(c1,circle(B,A)),red);
for (int i=0; i<tgt.length; ++i) {
  dot(intersectionpoints(c1,tgt[i]),2mm+red);
}

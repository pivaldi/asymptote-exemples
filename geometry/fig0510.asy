import geometry;
size(12cm,0);

// currentcoordsys=cartesiansystem((0,0),i=(1,0.5),j=(-0.5,.75));
// show(currentcoordsys, xpen=invisible);

point A=(2.5,-1);
dot("$A$",A,SW);
ellipse el1=ellipse(A,2,1,10);
draw(el1);

circle C=circle(A,3);
draw(C);
for (int i=0; i < 360; i+=90) {

  point B=point(C,angabscissa(i));
  dot("$B$",B,locate(unit(B-A)));


  line[] tgt=tangents(el1,B);
  draw(tgt,0.8*red);

  for (int i=0; i < tgt.length; ++i) {
    dot(intersectionpoints(el1,tgt[i]),blue);
  }

}

import geometry;
size(12cm,0);

// currentcoordsys=cartesiansystem((0,0),i=(1,0.5),j=(-0.5,.75));
// show(currentcoordsys, xpen=invisible);

point F=(0,0);
dot("$F$", F, SW);
parabola p=parabola(F, 0.1, 30);
draw(p);

point C=shift(2*(p.V-p.F))*p.V;
circle cle=circle(C, 0.2);
draw(cle);
for (int i=0; i < 360; i+=90) {

  point M=point(cle, angabscissa(i));
  dot("$M$", M, locate(unit(M-C)));

  line[] tgt=tangents(p, M);
  draw(tgt, 0.8*red);

  for (int i=0; i < tgt.length; ++i) {
    dot(intersectionpoints(p, tgt[i]), blue);
  }
}

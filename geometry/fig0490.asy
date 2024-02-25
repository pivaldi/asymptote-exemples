import geometry;
size(12cm);

point C=(0,0);
dot(C);

hyperbola[] h;
h[0]=hyperbola(C,2,2);
h[1]=hyperbola(C,1.5,1);

draw(h[0], 2bp+0.8*red);
draw(h[1], 2bp+0.8*blue);

point[] P=intersectionpoints(h[0],h[1]);

line[] l;
for (int i=0; i < P.length; ++i) {
  for (int j=0; j < 2; ++j) {
    /*<asyxml><view file="modules/geometry.asy" type="line[]" signature="tangents(hyperbola,point)"/></asyxml>*/
    l=tangents(h[j],P[i]);
    draw(l[0], j == 0 ? red : blue);
  }
}

dot(P, yellow);

// Enlarge the bounding box of the current picture.
draw(box((-4,-3), (4,3)), invisible);

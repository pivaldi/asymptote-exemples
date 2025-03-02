import geometry;
import animate;

point A=(0, 0), B=(8, 0), C=(8, 10);
unitsize(5cm/B.x, 5cm/C.y);
animation Anim, Anim1;
path locus;

triangle t=triangle(A, B, C);
transform proj=projection(t.BC);
draw(t, linewidth(bp));
label(t);
segment s=segment(t.AB);
line l1 =line(t.BC);

int n=50; // Points number of the locus
real a=0, step=1/(n-1);
for (int i=0; i < n; ++i) {
  save(); // Geometry part
  point M=point(s, a);
  line l2=parallel(M, l1);
  point Np=intersectionpoint(l2, t.AC);
  point P=proj*Np;
  dot("$M$", M, S, 0.8*red);
  dot("$P$", P, E, 0.8*red);
  dot("$N$", Np, W, 0.8*red);
  fill(M--Np--P--B--cycle, 0.8*red);
  perpendicularmark(t.BC, t.BA);
  Anim.add(); // Anim contain only the geometry part
  restore();
  // Graph part
  picture gph; // picture of the graph
  unitsize(gph, 5cm/B.x, 4cm/C.y); // units for the graph
  show(gph, currentcoordsys);
  point Sp=(a*abs(B-A), abs(M-B)*abs(M-Np));
  locus=locus..Sp;
  draw(gph, locus, bp+0.8*red);
  Anim1.add(gph); // Anim1 contain only the graph part
  a += step;
}

Anim1.export(); // make all Anim1 pictures to the same size.
Anim1.purge();

for (int i=0; i < Anim.pictures.length; ++i) {
  // draw axis on all pictures of Anim1
  draw(Anim1.pictures[i], Label("$x$", align=S, position=EndPoint), hline, Arrow);
  draw(Anim1.pictures[i], Label("$y$", align=W, position=EndPoint), vline, Arrow);
  // add each graph to the corresponding geometric picture
  add(Anim.pictures[i], Anim1.pictures[i].fit(), 1.25*B);
}

Anim.movie();

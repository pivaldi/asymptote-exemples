import geometry;
import animate;
settings.tex = "pdflatex";

animation A;
size(12cm);

for (int a = 1; a < 20; ++a) {
  save();
  point P = (-4.5, 0); dot(P);
  inversion inv = inversion(1, P);
  line l1 = line((0, 0), (-0.35, 1)), l2 = line((0, 0), (0.35, 1));
  path g1 = inv*l1, g2=inv*l2;

  fill(g1^^g2, evenodd+lightgrey); draw(g1, linewidth(bp));
  draw(g2, linewidth(bp));

  for (int i:new int[]{-1, 1}) {
    point P = (0, 3i/a);
    triangle t = triangle(shift(P)*hline, l1, l2);
    int n = a;

    for (int j = 0; j <= n; ++j) {
      circle C = excircle(t.AB);
      t = triangle(shift(angpoint(C, i*90))*hline, l1, l2);
      circle Cp = inv*C;
      path g = Cp;

      fill(g, 0.95*yellow);
      draw(g, bp+red); draw(g, blue);
    }
  }

  picture pic;
  add(pic, bbox(5mm, Fill(rgb(0.95, 0.95, 0.8))));
  A.add(pic);
  restore();
}

A.pdf(keep = true);

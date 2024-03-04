import geometry;
import animate;
animation A;

size(15cm);

int nAnim = 75;
int nCircle = 6;
real astep = 360/nAnim;

inversion inv = inversion((-1, -2), 1);
line L1 = line(N, S);
circle C = inv * L1;
point center = C.C;

for (int i = -nAnim; i < nAnim; ++i) {
  real r;
  r = 0.001 + 4 * (i/nAnim)^2;
  line L2 = shift(2 * r * E) * L1;
  transform T = shift(0, -2 * r);
  transform R = rotate(astep * i, center);
  point C0c = r * E + nCircle/2 * sqrt(r) * N;
  circle[] Ci = sequence(new circle(int i){return circle(T^i * C0c, r);},  nCircle);

  fill(R * (path)C,  0.3 * blue);
  circle Cl = (circle) (R * (inv * L2));
  transform dsh = shift(Cl.r / 3 * unit(center-Cl.C));
  radialshade((path)Cl, white, dsh * Cl.C, 0, black, dsh * Cl.C, Cl.r);

  for (int i = 0; i < Ci.length; ++i) {
    circle Ct = inv * Ci[i];
    transform dsh = shift(Ct.r/3 * unit(center-Ct.C));
    radialshade(R * (path)Ct, red, dsh * R * Ct.C, 0, black, dsh * R * Ct.C, Ct.r);
  }

  A.add();
  erase();
}

A.movie(BBox(2mm, Fill(black)));

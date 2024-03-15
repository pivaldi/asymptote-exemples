size(0,0);

defaultpen(linewidth(1bp));
real u=4cm;
pair A, B, C, D, E;
path p, q, r;

A = u*up;
p = interp(A, rotate(72)*A, -.2) -- interp(A, rotate(72)*A,1.2);
for(int i=0; i<=5; ++i)
  draw(rotate(72i)*p);

B = midpoint(A--rotate(72)*A );
C = .8*B;

p = B --- C .. (rotate(2*72)*C){right};
// On allonge le chemin p
p = (point(p,0) - 4mm*dir(p,0.001))
  --
  point(p,0)
  & p &
  point(p,2)
  --
  (point(p,2) + 4mm*dir(p,2));

E = intersectionpoint(p, rotate(72)*p);
q = firstcut(p,shift(E)*scale(2mm)*unitcircle).before;
r = lastcut(p,shift(E)*scale(2mm)*unitcircle).after;

for(int i=0; i<=4; ++i)
  {
    draw(rotate(72i)*q);
    draw( rotate(72i)*r);
    draw(rotate(72i)*A,linewidth(4bp));
    draw(rotate(72i)*B,linewidth(4bp));
    draw(rotate(72i)*C,linewidth(4bp));
  }

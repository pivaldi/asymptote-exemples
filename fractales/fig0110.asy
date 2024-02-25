import geometry;
size(10cm,0);

triangle[] dissect(triangle T, int n)
{
  if(n <= 0) return new triangle[]{T};
  triangle[] OT;
  point M=midpoint(T.BC);
  triangle[] Tp=dissect(triangle(M,T.A,T.B),n-1);
  for(triangle t : Tp) OT.insert(0,t);
  triangle[] Tp=dissect(triangle(M,T.C,T.A),n-1);
  for(triangle t : Tp) OT.insert(0,t);
  return OT;
}

triangle T=rotate(45)*triangle((1,1),(0,0),(2,0));
triangle[] DT=dissect(T,9);
path g;
transform R=reflect(T.BC);

for(int i : DT.keys) {
  draw(DT[i],miterjoin+0.9*red);
  draw(R*DT[i],miterjoin+0.9*red);
  g=g--centroid(DT[i]);
}

draw(scale(sqrt(2))*unitsquare,bp+miterjoin+0.8*blue);
draw(g--reverse(R*g)--cycle,bp+miterjoin+yellow);

shipout(bbox(sqrt(2)*mm, Fill(black)));

size(12cm,0);

import geometry;

triangle T=triangleAbc(90,Tan(30),1);

triangle[] reverse(triangle[] arr)
{
  triangle[] or;
  int l=arr.length;
  for(int i=0; i < l; ++i) {
    or.push(arr[l-i-1]);
  }
  return or;
}

triangle[] dissect(triangle T, int n, bool reverse=false)
{
  if(n <= 0) return new triangle[]{T};
  triangle[] OT;

  point M=curpoint(T.AB,T.b()*Tan(30));
  point H=projection(T.BC)*M;
  triangle[] OT1, OT2, OT3;
  OT.append(dissect(triangle(H,T.B,M),n-1,!reverse));
  OT.append(reverse((dissect(triangle(H,T.C,M),n-1,!reverse))));
  OT.append(dissect(triangle(T.A,T.C,M),n-1,!reverse));
  return OT;
}

triangle[] DT=dissect(T,5);
point O=centroid(DT[0]);
path g;
transform Ro=rotate(30,T.B), Re=reflect(T.BC), Roj;

for(int i : DT.keys) {
  O=incenter(DT[i]);
  g=g--O;
}

g=reverse(g);
path G, g=g--Re*reverse(g) ;
for (int j=0; j < 12; j += 2) G=G--Ro^(-j)*g;

fill(G--cycle,0.3*blue);

for(int i : DT.keys) {
  for (int j=0; j < 12; j += 2) {
    Roj=Ro^j;
    draw(Roj*DT[i],miterjoin+0.8*red);
    draw(Roj*(Re*DT[i]),miterjoin+0.8*red);
  }
}

draw(G--cycle,bp+miterjoin+0.9*yellow);

shipout(bbox(2mm, FillDraw(black, 1mm+miterjoin+deepblue)));

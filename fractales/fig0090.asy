size(10cm,0);

real a=-1.5, b=2a/3;

picture H(pen p=currentpen) {
  picture H;
  draw(H,(-a,0)--(a,0)^^(-a,-b)--(-a,b)^^(a,-b)--(a,b),p);
  return H;
}

transform sc=scale(0.5);
transform[] t={identity(),
               shift(-a,b)*sc, shift(-a,-b)*sc,
               shift(a,b)*sc,  shift(a,-b)*sc};

picture Hfractal(int n, pen p=currentpen)
{
  picture pic;
  if(n == 0) return H(p);
  picture Ht=Hfractal(n-1,p);
  for (int i=0; i < 5; ++i) add(pic,t[i]*Ht);
  return pic;
}

add(Hfractal(4, bp+0.5*red));

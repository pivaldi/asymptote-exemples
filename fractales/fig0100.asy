size(10cm,0);

real a=-1.5, b=2a/3;

path[] H=(-a,0)--(a,0)^^(-a,-b)--(-a,b)^^(a,-b)--(a,b);

transform sc=scale(0.5);
transform[] t={shift(-a,b)*sc, shift(-a,-b)*sc,
               shift(a,b)*sc,  shift(a,-b)*sc};

void Hfractal(path[] g, int n, pen[] p=new pen[]{currentpen})
{
  p.cyclic=true;
  if(n == 0) draw(H,p[0]); else {
    for (int i=0; i < 4; ++i) {
      draw(t[i]*g,p[n]);
      Hfractal(t[i]*g,n-1,p);
    }
  }
}

Hfractal(H, 5, new pen[] {0.8*red, 0.8*green, 0.8*blue, black, blue+red});

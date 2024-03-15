size(0,0);

pair inversion(pair O, real k, pair M)
{
  return (O + k*unit(M-O)/abs(M-O));
}

guide inversion(pair O, real k, path M)
{
  guide opath=inversion(O,k,point(M,0));
  for (real i=0; i<=length(M); i+=length(M)/100)
    opath = opath .. inversion(O,k,point(M,i));
  return opath .. cycle;
}

real u=10cm;
path [] p;
path A = scale(u)*unitcircle;
path B = scale(3)*A;
pair z = rotate(10)*(5u,0);


draw(inversion( z, 2*u^2, A ),linewidth(1pt));
draw(inversion( z, 2*u^2, B ),linewidth(1pt));

p[0] = shift(2u,0)*scale(u)*unitcircle;

for (int i=0; i<=5; ++i)
  {
    if (i!=0) p[i] = rotate(360/6)*p[i-1];
    draw(inversion( z, 2 (u^2), p[i] ));
  }

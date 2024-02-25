size(10cm,0);

path unitpolygon(int n)
{
  guide opath;
  for (int i=1; i<=n; ++i)
    opath=opath--rotate((i-1)*360/n)*E;
  return opath--cycle;
}

for (int i=3; i<9; ++i)
  draw(shift(2.5*(i%3),-2.5*quotient(i,3))*unitpolygon(i));

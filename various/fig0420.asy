import stats;

path ell(pair O, real a, real b, int t=1)
{
  path g=ellipse(O,a,b);
  return subpath(g, t > 0 ? -1 : 1, t > 0 ? 1 : 3);
}

size(10cm,0);

real a=1, b=1.75, d=0.1, dl=1.5;
pen p1=1.5bp+white, p2=1.5bp+black;
pen fp=grey;
int n=8, nm=floor(n/2);
real step=1/n;


for (int line=0; line < 7; ++line) {
  pair p=(0,0);
  picture pic;
  transform Sh=shift(line*(0,-2.5*b));
  for (int i=0; i <= nm; ++i) {
    real t=cos(i*step);
    real t=0.75-i*step;
    real na=a*(0.25+0.75*t);
    path g1=ell(p,na,b,1);
    path g2=ell(p,na,b,-1);
    fill(pic, g1--g2--cycle, fp);
    label(pic,(string)round(unitrand()),p,white);
    draw(pic, g1, p1);
    draw(pic, g2, p2);
    if(i != 0) {
      transform T=shift(-2p);
      label(pic,(string)round(unitrand()),T*p,white);
      fill(pic, T*(g1--g2--cycle), fp);
      draw(pic, T*g1, p1);
      draw(pic, T*g2, p2);
    }
    if(i != nm) p += na+d+dl*t;
  }
  add(Sh*pic);
  pair M=(p.x,0);
  picture pic2=reflect(M,M+N)*pic;
  add(Sh*pic2);
  add(Sh*reflect(3*M,3*M+N)*pic2);
}

shipout(bbox(1mm,Fill(lightgrey)));

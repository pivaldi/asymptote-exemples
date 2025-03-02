import graph;
import animate;
size(15cm);

pair[] interp(pair[] a1, pair[] a2, real k)
{
  if(a1.length != a2.length) abort("interp: arrays have differents length.");
  pair[] g;
  int l=a1.length;
  g=sequence(new pair(int j){
      return interp(a1[j],a2[j],k);
    },l);
  return g;
}

path morphing(pair[] a1, pair[] a2, real k, interpolate join=operator --)
{
  if(a1.length != a2.length) abort("morphing: arrays have differents length.");
  return join(...interp(a1, a2, k));
}

pair[] nodes(path g, int n)
{
  int np=round(n/length(g));
  n=np == 0 ? n : np*length(g);
  return sequence(new pair(int i){return point(g, length(g)*i/n);}, n);
}

animation A;

real f(real t){ return exp(cos(t))-2*cos(4*t)+sin(t/12)^5;}
path gf=polargraph(f,0,12*pi,1000);

int nbpt=1000;
pair[] A1=nodes(scale(5.5)*unitcircle,nbpt);
pair[] A2=shift(0,0)*nodes(gf,nbpt);
interpolate join=operator --;


int n=50;
real step=1/n;
pen p1=0.8*red, p2=0.8*blue;

for (int i=0; i <= n; ++i) {
  save();
  filldraw(join(morphing(A1,A2,1,join),cycle),
           evenodd+p2);
  filldraw(join(morphing(A1,A2,i*step,join),cycle),
           evenodd+interp(p1,p2,i*step));
  A.add();
  restore();
}

int l = A.pictures.length;
for (int i=1; i <= l; ++i) {
  A.add(A.pictures[l-i]);
}

A.movie(BBox(3mm, 3bp+miterjoin+black, FillDraw(lightyellow)));

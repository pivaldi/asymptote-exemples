import graph_settings;
import animate;
size(10cm);
settings.tex="pdflatex";
settings.outformat="pdf";

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

int nbpt=4;
pair[] A1=nodes(unitsquare,nbpt);
path g=(0,0)--(1,0)--(0,1)--(1,1)--cycle;
pair[] A2=shift(2,1)*rotate(25)*nodes(g,nbpt);
interpolate join=operator ..;
// interpolate join=operator --;


int n=40;
real step=1/n;
pen p1=0.8*red, p2=0.8*blue;

filldraw(join(morphing(A1,A2,0,join),cycle), p1);
filldraw(join(morphing(A1,A2,1,join),cycle), p2);

for (int i=0; i <= n; ++i) {
  save();
  filldraw(join(morphing(A1,A2,i*step,join),cycle),opacity(0.5)+interp(p1,p2,i*step));
  A.add();
  restore();
}

A.movie();

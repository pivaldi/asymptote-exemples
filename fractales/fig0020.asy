size(10cm,0);

transform scale(pair center, real k) {
  return shift(center)*scale(k)*shift(-center);
}

path trk=(0,0)--(0,1);

void tree(path p, int n, real a=30, real b=40, real r=.75) {
  if (n!=0) {
    pair h=point(p,length(p));
    transform tb=rotate(180-b,h)*scale(h,r);
    transform ta=rotate(-180+a,h)*scale(h,r);
    draw(p,n/3+1/(n+1)*green+n/(n+1)*brown);
    tree(tb*reverse(p),n-1,a,b,r);
    tree(ta*reverse(p),n-1,a,b,r);
  }
}

tree(trk,12,a=25,b=40,r=.75);

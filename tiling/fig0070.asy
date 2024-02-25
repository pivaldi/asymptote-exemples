size(10cm,0);

void zigzag(int k)
{
  real t=180/k;
  pair o=(0,0), m=dir(t),
    n=rotate(180-2*t,m)*o,
    b=rotate(4*t-180,n)*m,
    c=rotate(180-6*t,b)*n,
    nn=reflect(o,b)*n;

  path lo=m--n--b--nn--cycle,
    p=o--m--n--b--c--cycle,
    pp=reflect(o,b)*p;

  for (int i=0; i <= k; ++i){
    filldraw(rotate(2*t*i,o)*p,.5*(red+blue));
    filldraw(rotate(2*t*i,o)*pp,0.25(red+blue));
    filldraw(rotate(2*t*i,o)*lo,(red+blue));
  }
}

zigzag(25);
shipout(bbox(3mm,2mm+miterjoin+black,FillDraw(0.5*blue)));

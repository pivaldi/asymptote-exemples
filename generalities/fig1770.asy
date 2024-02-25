size(6cm,0);

import math;

pair A=(0,0), B=(1,.5);
path cle=shift(1.75,2.5)*unitcircle;
pair pt, ptp;

pair project(pair pt, pair A, pair B)
  {
    return extension(pt,pt-dir(90+degrees(A-B,false)),A,B);
  }

draw(A--B);
draw(cle);

for (real t=0; t<=4; t+=.01)
  {
    pt=point(cle,t);
    ptp=project(pt,A,B);
    dot(ptp, red);
    draw(pt--ptp,dotted);

  }

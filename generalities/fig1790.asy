size(6cm,0);

import math;

pair A=(0,0), B=(1,.5), C=(.25,1);

pair ccenter(pair A, pair B, pair C)
  {
    pair mAB=midpoint(A--B);
    pair mAC=midpoint(A--C);
    return extension(mAB, rotate(90,mAB)*A, mAC, rotate(90,mAC)*A);
  }

draw(A--B--C--cycle);

pair circ=ccenter(A,B,C);
pair mAB=midpoint(A--B);
pair mAC=midpoint(A--C);
pair mBC=midpoint(B--C);

dot(circ, red);
dot(mAB^^mAC^^mBC);
drawline(mAB, circ, dotted);
drawline(mAC, circ, dotted);
drawline(mBC, circ, dotted);
draw(shift(circ)*scale(abs(circ-A))*unitcircle);

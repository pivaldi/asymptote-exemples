size(6cm,0);

import math;

pair A=(0,0), B=(1,.5), C=(.25,1);

pair project(pair pt, pair A, pair B)
  {
    return extension(pt,pt-dir(90+degrees(A-B,false)),A,B);
  }

pair icenter(pair A, pair B, pair C)
  {
    return extension(A, A+dir(A--B,A--C), B, B+dir(B--A,B--C));
  }

draw(A--B--C--cycle);

pair ins=icenter(A,B,C);
pair iAB=project(ins,A,B);
pair iAC=project(ins,A,C);
pair iBC=project(ins,B,C);

dot(ins, red);
dot(iAB^^iAC^^iBC);
drawline(A, ins, dotted);
drawline(B, ins, dotted);
drawline(C, ins, dotted);
draw(shift(ins)*scale(abs(ins-iAB))*unitcircle);

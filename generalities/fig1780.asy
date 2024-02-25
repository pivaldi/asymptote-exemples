size(6cm,0);

import math;

pair A=(0,0), B=(1,.5), C=(.25,1);

pair project(pair pt, pair A, pair B)
  {
    return extension(pt,pt-dir(90+degrees(A-B,false)),A,B);
  }

pair ocenter(pair A, pair B, pair C)
  {
    return extension(A, project(A,B,C), B, project(B,A,C));
  }

draw(A--B--C--cycle);

pair orth=ocenter(A,B,C);
pair Ap=project(A,B,C);
pair Bp=project(B,A,C);
pair Cp=project(C,A,B);

dot(orth, red);
dot(Ap^^Bp^^Cp);
drawline(A, orth, dotted);
drawline(B, orth, dotted);
drawline(C, orth, dotted);

size(6cm,0);
import math;

pair project(pair pt, pair A, pair B)
  {
    return extension(pt,pt-dir(90+degrees(A-B,false)),A,B);
  }


pair ecenter(pair A, pair B, pair C)
  {
    return extension(A, A+rotate(90)*dir(A--B,A--C), B, B+rotate(90)*dir(B--A,B--C));
  }

path ecircle(pair A, pair B, pair C)
  {
    return shift(ecenter(A,B,C))*scale(abs(ecenter(A,B,C)-project(ecenter(A,B,C),B,C)))*unitcircle;
  }

pair A=(0,0), B=(3,0), C=(3,4);
path tr=A--B--C--cycle;

draw(ecircle(A,B,C));
draw(ecircle(B,C,A));

pen p=linewidth(1pt);
drawline(A,B, p);
drawline(A,C, p);
drawline(B,C, p);

size(6cm,0);
import math;

pair A=(0,-.5), B=A+dir(45);
pair C=(0,1)+2dir(20);
path cle=shift(C)*scale(1)*unitcircle;

pair I1=intersectionpoint(A--interp(A,B,2),cle);
pair I2=intersectionpoint(A--interp(A,B,10),cle);

path AB=A--B;

draw(AB^^cle);
dot(I1^^I2,red);
draw(B--I2,1pt+dotted);

size(6cm,0);
import math;

pair A=(0,-.5), B=A+dir(45);
pair C=(0,1), D=C+5dir(20);

pair I=extension(A,B,C,D);

path AB=A--B;
path CD=C--D;

draw(AB^^CD);
dot("$I$",I,N,red);
draw(B--I,1pt+dotted);
dot("$A$",A,SE);
dot("$B$",B,SE);
dot("$C$",C,N);
dot("$D$",D,N);

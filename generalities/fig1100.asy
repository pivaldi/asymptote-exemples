size(0,0);
pair A, B, C;
A=(0,0); B=(4cm,0); C=(0,4cm);

draw(A--B--C--cycle);
filldraw(shift(A)*scale(6bp)*unitcircle, white);
filldraw(shift(B)*scale(6bp)*unitcircle, white);
filldraw(shift(C)*scale(6bp)*unitcircle, white);

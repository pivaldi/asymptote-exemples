size(0,0);
pair A, B, C;
A=(0,0); B=(3cm,0); C=(0,3cm);

draw(A--B--C--cycle);
filldraw(shift(A)*scale(4bp)*unitcircle, white);
filldraw(shift(B)*scale(4bp)*unitcircle, white);
filldraw(shift(C)*scale(4bp)*unitcircle, white);

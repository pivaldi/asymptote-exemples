import tube;
import graph3;
size(12cm,0);
// currentprojection=perspective((2,1,6),-Z); real q=1;
currentprojection=perspective((-1,1,1)); real q=2;

real x(real t){return (1-cos(t))*cos(q*t);}
real y(real t){return (1-cos(t))*sin(q*t);}
real z(real t){return cos(3t);}

path3 p=graph(x,y,z,0,2pi,20,operator ..);
draw(tube(p,scale(0.4,0.1)*unitcircle), purple);

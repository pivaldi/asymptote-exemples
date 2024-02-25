// Anneau de Borrommée
// Borromean rings

import tube;
import solids;

size(12cm,0);
currentprojection=perspective((0,0,1));

real a=5, b=2, sq3=sqrt(3);
for (int i=0; i <= 2; ++i) {
  real ai, bi;
  if(i == 0) {
    ai=a/2;
    bi=a*sq3/2;
  } else if(i == 1) {
    ai=-a/2;
    bi=a*sq3/2;
  } else {
    ai=0;
    bi=a*sq3;
  }
  real x(real t){return a*cos(t)+ai;}
  real y(real t){return a*sin(t)+bi;}
  real z(real t){return b*cos(3t);}

  path3 p=graph(x,y,z,0,2pi,100,operator ..)&cycle;


  real trig(real t){return 1-2*abs(t%1-0.5);}
  pen pens(real t) {
    real tt=trig(t+i/3);
    return interp(red,yellow,(tt));
  }

  draw(tube(p, coloredpath(polygon(4),pens)));
}

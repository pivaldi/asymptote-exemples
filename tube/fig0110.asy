import tube;
import graph3;
size(12cm,0);
currentprojection=orthographic(4,3,4);

real x(real t) {return sin(t);}
real y(real t) {return 0.5*sin(2*t);}

path g=graph(x,y,0,2pi,50,operator ..);
path3 p=path3(scale(5)*g);

pen pen(real t){
  return interp(red,blue,1-2*abs(t-0.5));
}

draw(tube(p,coloredpath(subpath(unitcircle,1,3),pen)));
draw(p);

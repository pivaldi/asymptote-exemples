import tube;
import graph3;
size(12cm,0);
currentprojection=orthographic(4,3,2);

real x(real t) {return sin(t);}
real y(real t) {return cos(t);}
real z(real t) {return sqrt(t);}

path3 p=graph(x,y,z,0,4pi,50,operator ..);

path section=subpath(unitcircle,0,2);

pen pens(real t){
  return interp(red,blue,t);
}

// Define a transformation wich will be applied to each section at reltime t.
transform T(real t){return scale(t^0.75/2);}

// Combination of pens and transform:
draw(tube(p,coloredpath(section,pens), T));
draw(p);

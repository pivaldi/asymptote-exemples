import tube;
import graph3;

size(10cm,0);
currentprojection=perspective(4,3,4);
real x(real t) {return (1/sqrt(1+0.5*t^2))*cos(2pi*t);}
real y(real t) {return (1/sqrt(1+0.5*t^2))*sin(2pi*t);}
real z(real t) {return t;}

path3 p=graph(x,y,z,0,2.7,operator ..);
path section=scale(0.2)*polygon(5);

// Define a pen wich depends of a real t. t represent the "reltime" of the path3 p.
pen pen(real t){
  return interp(red,blue,1-2*abs(t-0.5));
}

// Here the section has colored segments (by default) depending to reltime.
draw(tube(p,coloredpath(section,pen)));

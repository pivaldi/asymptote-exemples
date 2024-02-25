import tube;
import graph3;

size(10cm,0);
currentprojection=perspective(4,3,4);
real x(real t) {return (1/sqrt(1+0.5*t^2))*cos(2pi*t);}
real y(real t) {return (1/sqrt(1+0.5*t^2))*sin(2pi*t);}
real z(real t) {return t;}

path3 p=graph(x,y,z,0,2.7,operator ..);
path section=scale(0.2)*polygon(4);

// Define an array of pen wich depends of a real t. t represent the "reltime" of the path3 p.
pen[] pens(real t){
  return new pen[] {interp(blue,red,t),
      interp(orange,yellow,t),
      interp(green,orange,t),
      interp(red,purple,t)};
}

// "pen[] pens(real t)" allows to color each nodes or segments with a real parameter (the reltime)
// Note that all arrays of pens are convert to cyclical arrays.
draw(tube(p,coloredpath(section,
                        pens,
                        colortype=coloredNodes)));

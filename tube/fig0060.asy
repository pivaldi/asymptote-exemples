import tube;
import graph3;

size(10cm,0);
currentprojection=perspective(4,3,4);
real x(real t) {return (1/sqrt(1+0.5*t^2))*cos(2pi*t);}
real y(real t) {return (1/sqrt(1+0.5*t^2))*sin(2pi*t);}
real z(real t) {return t;}

path3 p=graph(x,y,z,0,2.7,operator ..);
path section=scale(0.2)*polygon(5);

// Here the path scale(0.2)*polygon(5) has colored NODES.
coloredpath cp=coloredpath(section,
                           new pen[]{0.8*red, 0.8*blue, 0.8*yellow, 0.8*purple, black},
                           colortype=coloredNodes);

// Draw the tube, each NODE of the section is colored.
draw(tube(p,cp));

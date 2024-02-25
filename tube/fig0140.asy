import tube;
import graph;
size(12cm,0);
currentprojection=perspective(0,3,6);

real f(real t) {return cos(2*t);}
path g=polargraph(f,0,2pi,10,operator --)&cycle;
path3 p=path3(scale(20)*g);

draw(tube(p,2W--2E), red, bp+black);
draw(tube(p,unitcircle), orange, bp+black);

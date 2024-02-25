import tube;
import graph;
size(12cm,0);
currentprojection=perspective(4,3,6);

real f(real t) {return cos(2*t);}
path g=polargraph(f,0,2pi,10,operator ..)&cycle;
path3 p=path3(scale(20)*g);

draw(tube(p,rotate(60)*polygon(3)), 0.8*red);
draw(tube(shift(Z)*p,scale(0.25)*unitcircle), orange);
draw(shift(1.25*Z)*p);

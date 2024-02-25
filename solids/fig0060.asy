// Author: John Bowman
import three;
size(6cm,0);
currentprojection=perspective(10,100,50);
real a=2.5;

draw(scale3(a)*unitsphere,lightyellow);
draw(align(unit(currentprojection.vector()))*scale3(a)*unitcircle3,2bp+red);

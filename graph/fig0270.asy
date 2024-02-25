//Author: John Bowman
import graph;

size(250,200,IgnoreAspect);

real Sin(real t, real w) {return sin(w*t);}

draw(graph(new real(real t) {return Sin(t,pi);},0,1),blue,"$\sin(\pi x)$");
draw(graph(new real(real t) {return Sin(t,2pi);},0,1),red,"$\sin(2\pi x)$");

xaxis("$x$",BottomTop,Ticks);
yaxis("$y$",LeftRight,Ticks);

attach(legend(),point(E),20E,UnFill);

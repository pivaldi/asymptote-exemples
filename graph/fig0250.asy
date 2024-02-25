size(10cm,0);
import contour;
import graph;

xlimits( -3, 3);
ylimits( -3, 3);
yaxis( "$y$" , Ticks());
xaxis( "$x$", Ticks());

real f(real x, real y) {return x*y;}

draw(contour(f,(-3,-3),(3,3),new real[] {1}));

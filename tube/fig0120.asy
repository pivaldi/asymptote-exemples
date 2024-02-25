import tube;
import graph3;
size(12cm,0);
currentprojection=orthographic(1,0,6);

real x(real t) {return sin(t);}
real y(real t) {return 0.5*sin(2*t);}

path g=graph(x,y,0,2pi,50,operator ..);
path3 p=path3(scale(5)*g);

pen[] pens(real t){
  real tt=1-2*abs(t-0.5);
  return new pen[] {interp(red,blue,tt), interp(blue,red,tt)};
}

draw(tube(p,
          coloredpath(polygon(5),pens,colortype=coloredNodes)));
label("colortype=coloredNodes",8*X);

draw(tube(shift(10*Y)*p,
          coloredpath(polygon(5),pens,colortype=coloredSegments)));
label("colortype=coloredSegments",8*X+10Y);

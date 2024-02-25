import graph3;
import palette;

real sinc(real x){return x != 0 ? sin(x)/x : 1;}

real f(pair z){
  real value = (sinc(pi*z.x)*sinc(pi*z.y))**2;
  return value^0.25;
}

currentprojection=orthographic(0,0,1);

size(10cm,0);

surface s=surface(f,(-5,-5),(5,5),100,Spline);
s.colors(palette(s.map(zpart),Gradient((int)2^11 ... new pen[]{black,white})));

draw(planeproject(unitsquare3)*s,nolight);

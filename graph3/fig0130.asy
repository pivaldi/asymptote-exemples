settings.render=0;
import graph3;
import palette;
size(10cm,0);
currentprojection=orthographic(2,-2,2.5);

real f(pair z) {
  real u=z.x, v=z.y;
  return (u/2+v)/(2+cos(u/2)*sin(v));
}

surface s=surface(f,(0,0),(14,14),150,Spline);
draw(s,mean(palette(s.map(zpart),Gradient(yellow,red))));

if(!is3D())
  shipout(bbox(3mm,Fill(black)));

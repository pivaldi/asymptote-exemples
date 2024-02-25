import contour3;
import animate;
// settings.tex="pdflatex";
// settings.outformat="pdf";

size(10cm);
currentprojection=orthographic(15,8,10);
animation A;
A.global=false;

typedef real fct3(real,real,real);
fct3 F(real t)
{
  return new real(real x, real y, real z){return x^2+y^2-t*z^2+t-1;};
}

int n=15;
picture pic;
real tmin=0.1, tmax=2;
real step=(tmax-tmin)/n;
draw(box((-5,-5,-5),(5,5,5)));
for (int i=0; i < n; ++i) {
  save();
  draw(surface(contour3(F(tmin+i*step),(-5,-5,-5),(5,5,5),15)),lightblue);
  pic.erase();
  add(pic,bbox(5mm,FillDraw(lightyellow)));
  A.add(pic);
  restore();
}

A.movie();

size(10cm,0);

real mandelbrot(pair c, real r, int count=100) {
  int i=0;
  pair z=c;
  do {
    ++i;
    z=z^2+c;
  } while (length(z) <= r && i<count);

  return (i<count) ? i/count : 0;
}

real r=4;
real step=.01;
real xmin=-2.25, xmax=.75;
real ymin=-1.3, ymax=0;

real x=xmin, y=ymin;
int xloop=round((xmax-xmin)/step);
int yloop=round((ymax-ymin)/step);
pen p;
path sq=scale(step)*unitsquare;

for(int i=0; i < xloop; ++i) {
  for(int j=0; j < yloop; ++j) {
    p=mandelbrot((x,y),r,20)*red;
    filldraw(shift(x,y)*sq,p,p);
    y += step;
  }
  x += step;
  y=ymin;
}

add(reflect((0,0),(1,0))*currentpicture);

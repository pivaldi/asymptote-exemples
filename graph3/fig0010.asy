import graph3;
ngraph=200;
size(12cm,0);
currentprojection=orthographic(-4,-4,5);

real x(real t), y(real t), z(real t);

real R=2;
void xyzset(real s){
  x=new real(real t){return (R+s*cos(t/2))*cos(t);};
  y=new real(real t){return (R+s*cos(t/2))*sin(t);};
  z=new real(real t){return s*sin(t/2);};
}


int n=ngraph;
real w=1;
real s=-w, st=2w/n;
path3 p;
triple[][] ts;
for (int i=0; i <= n; ++i) {
  xyzset(s);
  p=graph(x,y,z,0,2pi);

  ts.push(new triple[] {});
  for (int j=0; j <= ngraph; ++j) {
    ts[i].push(point(p,j));
  }
  s += st;
}

pen[] pens={black, yellow, red, yellow, black};
draw(surface(ts, new bool[][]{}), lightgrey);
for (int i=0; i <= 4; ++i) {
  xyzset(-w+i*w/2);
  draw(graph(x,y,z,0,2pi), 2bp+pens[i]);
}

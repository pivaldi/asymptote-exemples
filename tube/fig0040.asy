import tube;
import graph3;

size(10cm,0);
currentprojection=perspective(4,3,4);

triple f(real t){
  return t*Z+(cos(2pi*t),sin(2pi*t),0)/sqrt(1+0.5*t^2);
}

path3 p=graph(f,0,2.7,operator ..);
draw(tube(p,scale(0.2)*polygon(5)), purple);

unitsize(5cm);

string text="A text along a curve";
path p=(0,0)..(1,1)..(2,0.5){dir(0)};
int n=length(text);
real at=0;
real step=arclength(p)/n;

for (int i=0; i<n; ++i){
  real t=arctime(p,at);
  label(rotate(degrees(angle(dir(p,t),false)))*scale(3)*baseline(substr(text,i,1)),point(p,t));
  at += step;
 }

draw(p,lightgrey);

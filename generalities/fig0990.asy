size(4cm,0);

//Return Circle AB diameter
path circle(pair A, pair B)
{
  return shift(midpoint(A--B))*scale(abs(A-B)/2)*unitcircle;
}

pair A=(0,0), B=(1,0), C=(2,0);
path cleAB=circle(A,B);
path cleAC=circle(A,C);

for(real t=0; t<length(cleAB); t+=0.01)
  fill(circle(point(cleAB,t),point(cleAC,t)));

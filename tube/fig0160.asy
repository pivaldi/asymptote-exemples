import tube;
import graph3;
size(12cm,0);

currentprojection=perspective(1,-1,0);

real x(real t)
{
return 41*cos(t)-18*sin(t)-83*cos(2t)-83*sin(2t)-11*cos(3t)+27*sin(3t);
}

real y(real t)
{
  return 36*cos(t)+27*sin(t)-113*cos(2t)+30*sin(2t)+11*cos(3t)-27*sin(3t);
}

real z(real t)
{
  return 45*sin(t)-30*cos(2t)+113*sin(2t)-11*cos(3t)+27*sin(3t);
}

path3 p=scale3(0.05)*graph(x,y,z,-pi,pi,200,operator --)&cycle;

path section=scale(2,0.5)*unitcircle;
// path section=scale(2,0.5)*polygon(4);
// path section=scale(2)*polygon(6);
draw(tube(p,section), purple);

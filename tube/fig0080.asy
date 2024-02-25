import tube;
import graph3;
size(12cm,0);
currentprojection=perspective((-1,1,1));

int p=7, q=3;
real n=p/q;
real a=1, b=1;
real x(real t){return a*cos(t);}
real y(real t){return a*sin(t);}
real z(real t){return b*cos(n*t);}

real R(real t){
  real st2=(n*sin(n*t))^2;
  return a*(1+st2)^(1.5)/sqrt(1+st2+n^4*cos(n*t)^2);
  // return -a*(1+st2)^(1.5)/sqrt(1+st2+n^4*cos(n*t)^2); // Signed radius curvature
}

real mt=q*2*pi;
path3 p=graph(x,y,z,0,mt,operator ..)..cycle;

real m=R(0), M=R(0.5*pi/n);

// Define a pen depending to the radius curvature of graph(x,y,z) at reltime t
pen curvaturePen(real t){
  real r=abs(R(t*mt)-m)/(M-m);
  return interp(red,blue,r);
}

// Draw the tube, colors depend of the radius curvature R.
draw(tube(p,coloredpath(scale(0.1)*unitcircle, curvaturePen)));

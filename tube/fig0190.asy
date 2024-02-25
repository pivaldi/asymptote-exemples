import tube;
import solids;

size(12cm,0);
currentprojection=perspective((0,0,1));

int p=8, q=3;
real n=p/q, R=2, r=1;

real x(real t){return (R+r*cos(n*t))*cos(t);}
real y(real t){return (R+r*cos(n*t))*sin(t);}
real z(real t){return r*sin(n*t);}

path3 p=graph(x,y,z,0,6pi,200,operator ..)&cycle;

revolution torus=revolution(Circle(R*X,r,Y,10),Z);

transform T(real t){return scale(0.3+0.25*sin(t*20pi));}

pen[] bpen={0.5red,0.5blue};
bpen.cyclic=true;
pen pen(real t){return bpen[ceil(sin(t*20pi)-1e-3)];}

draw(tube(p,coloredpath(polygon(3),pen),T));
// draw(surface(torus),yellow);

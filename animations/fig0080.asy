size(16cm);
import graph3;
import animation;
import solids;

settings.render=0;
animation A;

int nbpts=500;
real q=2/5;
real pas=5*2*pi/nbpts;
int angle=3;
real R=3;

real x(real t){return R*cos(q*t)*cos(t);}
real y(real t){return R*cos(q*t)*sin(t);}
real z(real t){return R*sin(q*t);}

triple[] P;
real t=-pi;
for (int i=0; i<nbpts; ++i) {
  t+=pas;
  P.push((x(t),y(t),z(t)));
}

currentprojection=orthographic((0,5,2));
currentlight=(3,3,5);

pen p=rgb(0.1,0.1,0.58);
transform3 t=rotate(angle,(0,0,0),(1,0.25,0.25));

filldraw(box((-R-0.5,-R-0.5),(R+0.5,R+0.5)), p, 3mm+black+miterjoin);

revolution r=sphere(O,R);
draw(surface(r),p);

for (int phi=0; phi<360; phi+=angle) {
  bool[] back,front;
  save();

  for (int i=0; i<nbpts; ++i) {
    P[i]=t*P[i];
    bool test=dot(P[i],currentprojection.camera) > 0;
    front.push(test);
  }

  draw(segment(P,front,operator ..),linewidth(1mm));
  draw(segment(P,!front,operator ..),grey);
  A.add();
  restore();
}

A.movie();

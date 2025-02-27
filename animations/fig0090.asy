size(16cm);
import graph3;
import animation;
import solids;

currentlight.background=black;
settings.render=0;
animation A;
A.global=false;

int nbpts=500;
real q=2/5;
real pas=5*2*pi/nbpts;
int angle=4;
real R=0.5;
pen p=rgb(0.1,0.1,0.58);
triple center=(1,1,1);
transform3 T=rotate(angle,center,center+X+0.25*Y+0.3*Z);

real x(real t){return center.x+R*cos(q*t)*cos(t);}
real y(real t){return center.y+R*cos(q*t)*sin(t);}
real z(real t){return center.z+R*sin(q*t);}

currentprojection=orthographic(1,1,1);
currentlight=(0,center.y-0.5,2*(center.z+R));

triple U=(center.x+1.1*R,0,0), V=(0,center.y+1.1*R,0);
path3 xy=plane(U,V,(0,0,0));
path3 xz=rotate(90,X)*xy;
path3 yz=rotate(-90,Y)*xy;

triple[] P;
path3 curve;
real t=-pi;
for (int i=0; i < nbpts; ++i) {
  t+=pas;
  triple M=(x(t),y(t),z(t));
  P.push(M);
  curve = curve..M;
}

curve=curve..cycle;

draw(surface(xy), grey);
draw(surface(xz), grey);
draw(surface(yz), grey);

triple xyc=(center.x,center.y,0);
path3 cle=shift(xyc)*scale3(R)*unitcircle3;
surface scle=surface(cle);
draw(scle, black);
draw(rotate(90,X)*scle, black);
draw(rotate(-90,Y)*scle, black);

draw(surface(sphere(center,R)), p);

triple vcam=1e5*currentprojection.camera-center;
for (int phi=0; phi<360; phi+=angle) {
  bool[] back,front;
  save();

  for (int i=0; i<nbpts; ++i) {
    P[i]=T*P[i];
    bool test=dot(P[i]-center,vcam) > 0;
    front.push(test);
  }

  curve=T*curve;
  draw(segment(P,front,operator ..), paleyellow);
  draw(segment(P,!front,operator ..),0.5*(paleyellow+p));
  draw((planeproject(xy)*curve)^^
       (planeproject(xz)*curve)^^
       (planeproject(yz)*curve), paleyellow);

  A.add();
  restore();
}

A.movie();

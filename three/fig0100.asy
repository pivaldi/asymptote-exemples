size(12cm,0);
import bsp;

currentprojection=orthographic(1,1.5,1);

path3 xy=plane((1,0,0),(0,1,0),(0,0,0));
path3 xz=rotate(90,X)*xy;
path3 yz=rotate(-90,Y)*xy;

face[] f;
filldraw(f.push(xy),project(xy),grey);
filldraw(f.push(xz),project(xz),grey);
filldraw(f.push(yz),project(yz),grey);
add(f);

draw(Label("$x$",EndPoint), O--(1,0,0), Arrow3);
draw(Label("$y$",EndPoint), O--(0,1,0), Arrow3);
draw(Label("$z$",EndPoint), O--(0,0,1), Arrow3);
dot(O);

path[] ph=texpath("$\displaystyle\int_{-\infty}^{+\infty}e^{-\alpha x^2}\,dx=
\sqrt{\frac{\pi}{\alpha}}$");
ph =shift((0.5,0.5))*rotate(-45)*scale(1/abs(min(ph)-max(ph)))*ph;

filldraw(project(path3(ph,XYplane)),0.8*yellow);
filldraw(project(path3(ph,ZXplane)),0.8*yellow);
filldraw(project(path3(ph,YZplane)),0.8*yellow);

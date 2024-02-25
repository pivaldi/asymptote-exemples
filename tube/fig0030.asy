import tube;
size(10cm,0);

currentprojection=orthographic(0,0.5,1);
path section=rotate(180)*(N+W--W--E--N+E);

path3 p=scale(5,10,1)*unitcircle3;

draw(tube(p, section,
          relstep=1/6), // Fix the sample step of the relative time (reltime) of the elementary tubes.
     purple, bp+yellow);
draw(p,red); dot(p);

import tube;
size(10cm,0);

currentprojection=orthographic(0,0.5,1);
path section=rotate(90)*(N+W--W--E--N+E);

// The tubed curve has three nodes joined with linear segments.
path3 p=scale(10,20,1)*(X--Y--(X+Y)--cycle);

// We may use the routine roundedpath in order to obtain rounded corner:
draw(tube(roundedpath(p,r=0.05),
          section,
          corner=100), // Controls the number of elementary tubes at the corners
     purple, bp+yellow+thin());
draw(p,red); dot(p);

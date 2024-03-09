// Author: John Bowman.
size(6cm,0);
import solids;
currentprojection=orthographic(0,10,5);

nslice=4*nslice;

revolution r=sphere(O,1);
draw(surface(r), lightgrey+opacity(0.75));

skeleton s;
r.transverse(s,reltime(r.g,0.6), currentprojection);
r.transverse(s,reltime(r.g,0.5), currentprojection);
draw(s.transverse.back,linetype("8 8",8));
draw(s.transverse.front);

r.longitudinal(s, currentprojection);
draw(s.longitudinal.front);
draw(s.longitudinal.back,linetype("8 8",8));

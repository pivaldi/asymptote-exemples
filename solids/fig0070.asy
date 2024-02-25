import solids;
size(6cm,0);
currentprojection=orthographic(1,2,2);

surface s=surface(sphere(1,n=10));

material[] p={material(0.8*red,yellow,red,blue), invisible, 0.8*(red+blue) , invisible, 0.8*blue};
p.cyclic=true;
draw(s,p);

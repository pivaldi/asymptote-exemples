import tube;
size(12cm,0);

currentprojection=orthographic(0,0.5,1);

// The tube's section used is a path (here an U);
path section=rotate(90)*(N+W--W--E--N+E);

// The tubed curve (yellow tube) has three nodes joined with cubic spline:
path3 p=shift(20X)*scale(10,20,1)*(X..Y..X+Y..cycle);

// A tube is a surface, here the tube is drawn in yellow with purple meshes.
draw(tube(p,section), yellow, bp+purple);
draw(p,red); dot(p);

// The tubed curve (purple tube) has three nodes joined with linear segments:
path3 p=scale(10,20,1)*(X--Y--(X+Y)--cycle);

// Here the tube is drawn in purple with yellow meshes.
draw(tube(p,scale(2)*section), purple, bp+yellow);
draw(p,red); dot(p);

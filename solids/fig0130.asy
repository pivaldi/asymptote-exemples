import solids;
size(8cm,0);
currentprojection=orthographic((2, 1, 2));

revolution r=cylinder((0, 0, 0), 1, -10, X);

draw(r);
draw("$x$",O--X,Arrow3);
draw("$y$",O--Y,Arrow3);
draw("$z$",O--Z,Arrow3);

label(XY()*(scale(2.5)*"This is not a cylinder"), (-5,0,1), align=Z);

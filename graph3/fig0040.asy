import graph3;

size(8cm,0);
currentprojection=orthographic(1,1,1);

defaultpen(overwrite(SuppressQuiet));

limits((0,-2,0),(2,2,2));

xaxis3("$x$", InTicks(XY()*Label));
yaxis3("$y$", InTicks(XY()*Label));
zaxis3("$z$", OutTicks, p=red, arrow=Arrow3);

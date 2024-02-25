import graph3;

size(6cm,0);
currentprojection=orthographic(1,1,1);

limits((-2,-2,0),(0,2,2));

xaxis3(Label("$x$",MidPoint), OutTicks());
yaxis3("$y$", InTicks());
zaxis3("$z$",XYEquals(-2,0), OutTicks());

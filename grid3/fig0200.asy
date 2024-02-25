import grid3;

size(10cm,0,IgnoreAspect);
currentprojection=orthographic(0.25, 1, 0.25);

limits((-2,-2,0), (0,2,2));

scale(Linear, Linear, Log(automax=false));
grid3(XZXgrid);
grid3(XYXgrid);
xaxis3(Label("$x$",position=EndPoint,align=S), Bounds(Min,Min), OutTicks());
yaxis3(Label("$y$",position=EndPoint,align=S), Bounds(Min,Min), OutTicks());
zaxis3(Label("$z$",position=EndPoint,align=(0,0.5)+W), Bounds(Min,Min), OutTicks(beginlabel=false));

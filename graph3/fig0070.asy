import graph3;

size(8cm,0);
currentprojection=orthographic(1,1,0.5);
limits((-2,-2,0),(0,2,2));

xaxis3(Label("$x$",align=Z),
       Bounds(Min,Min),
       OutTicks(endlabel=false,Step=1,step=0.5));

yaxis3("$y$", Bounds(),
       OutTicks(pTick=0.8*red, ptick=lightgrey));

zaxis3("$z$", Bounds(),
       OutTicks, p=red, arrow=Arrow3);

dot(Label("",align=Z), (-1,0,0), red);

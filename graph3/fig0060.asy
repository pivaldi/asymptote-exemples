import graph3;
usepackage("icomma");

size(8cm,0);
currentprojection=orthographic(1.5,1,1);

limits((-2,-1,-.5), (0,1,1.5));

xaxis3("$x$",
       Bounds(Both,Value),
       OutTicks(endlabel=false));

yaxis3("$y$",
       Bounds(Both,Value),
       OutTicks(Step=.5,step=.25));

zaxis3("$z$", XYEquals(-2,0), InOutTicks(Label(align=Y-X)));

dot(Label("",align=Z), (-1,0,0), red);

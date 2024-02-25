import grid3;

size(10cm,0,IgnoreAspect);
currentprojection=orthographic(0.25, 1, 0.25);
limits((-2,-2,0),(0,2,2));

grid3(new grid3routines [] {XYXgrid(-0.5), XYXgrid(1.5)},
      pGrid=new pen[] {red, blue},
      pgrid=new pen[] {0.5red, 0.5blue});
xaxis3(Label("$x$",position=EndPoint,align=Z), YZEquals(-2,0), OutTicks());
yaxis3(Label("$y$",position=EndPoint,align=Z), XZEquals(-2,0), OutTicks());
zaxis3(Label("$z$",position=EndPoint,align=X), XYEquals(-2,-2), OutTicks(Label("",align=-X-Y)));

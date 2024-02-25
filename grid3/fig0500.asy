import grid3;

size(10cm,0,IgnoreAspect);
currentprojection=orthographic(0.25,1,0.25);
limits((-2,-2,0),(0,2,2));

real Step=0.5, step=0.25;
xaxis3(Label("$x$",position=EndPoint,align=Z), YZEquals(-2,0),
       InOutTicks(Label(align=0.5*(Z-Y)),
                  Step=Step, step=step,
                  gridroutine=XYgrid,
                  pGrid=red, pgrid=0.5red));

yaxis3(Label("$y$",position=EndPoint,align=Z), XZEquals(-2,0),
       InOutTicks(Label(align=-0.5*(X-Z)), Step=Step, step=step,
                  gridroutine=YXgrid,
                  pGrid=red, pgrid=0.5red));

zaxis3("$z$", XYEquals(-1,0), OutTicks(Label(align=-0.5*(X+Y))));

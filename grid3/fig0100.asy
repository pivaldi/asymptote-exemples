import grid3;

size(10cm,0,IgnoreAspect);
currentprojection=orthographic(0.25, 1, 0.25);

limits((-2,-2,0), (0,2,2));

grid3(
      pic=currentpicture,            // picture (default=currentpicture)

      gridroutine=XYZgrid(           // gridtype3droutine or gridtype3droutine [] (alias gridtype3droutines)
                          //                         or gridtype3droutines []:
                          //                         The routine(s) to draw the grid(s);
                          //                         the values can be as follows:
                          //                            * XYgrid : draw grid from X in direction of Y
                          //                            * YXgrid : draw grid from Y in direction of X
                          //                                etc...
                          //                            * An array of previous values XYgrid, YXgrid, ...
                          //                            * XYXgrid : draw XYgrid and YXgrid grids
                          //                            * YXYgrid : draw XYgrid and YXgrid grids
                          //                            * ZXZgrid : draw ZXgrid and XZgrid grids
                          //                            * YX_YZgrid : draw YXgrid and YZgrid grids
                          //                            * XY_XZgrid : draw XYgrid and XZgrid grids
                          //                            * YX_YZgrid : draw YXgrid and YZgrid grids
                          //                            * An array of previous values XYXgrid, YZYgrid, ...
                          //                            * XYZgrid : draw XYXgrid, ZYZgrid and XZXgrid grids.
                          pos=Relative(0)), // position (default=Relative(0)) :
      //                          this is the position of the grid relatively to
      //                          the perpendicular axe of the grid.
      //                          If 'pos' is a the real, 'pos' is a coordinate relativly to this axe.
      //                          Alias 'top=Relative(1)', 'middle=Relative(0.5)'
      //                          and 'bottom=Relative(0)' can be used as value.

      // Following arguments are similar as the function 'Ticks'.
      N=0,                // int (default=0)
      n=0,                // int (default=0)
      Step=0,             // real (default=0)
      step=0,             // real (default=0)
      begin=true,         // bool (default=true)
      end=true,           // bool (default=true)
      pGrid=grey,         // pen (default=grey)
      pgrid=lightgrey,    // pen (default=lightgrey)
      above=false         // bool (default=false)
      );

xaxis3(Label("$x$",position=EndPoint,align=S), Bounds(Min,Min), OutTicks());
yaxis3(Label("$y$",position=EndPoint,align=S), Bounds(Min,Min), OutTicks());
zaxis3(Label("$z$",position=EndPoint,align=(0,0.5)+W), Bounds(Min,Min), OutTicks(beginlabel=false));

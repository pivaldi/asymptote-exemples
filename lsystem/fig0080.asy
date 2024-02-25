import Lsystem;
size(8cm,0);

Lsystem HilbertCurve=Lsystem("X",
                             new string[][]{{"X","-YF+XFX+FY-"},{"Y","+XF-YFY-FX+"}},
                             La=90, Lai=0);
HilbertCurve.iterate(6);
draw(HilbertCurve.paths(), linewidth(1bp));

shipout(bbox(Fill(lightgrey)));

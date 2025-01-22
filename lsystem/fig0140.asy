// Peano Gosper curve
import Lsystem;
size(12cm,0);

Lsystem PeanoGosperCurve=
  Lsystem("FX",
          new string[][]{{"X","X+YF++YF-FX--FXFX-YF+"},{"Y","-FX+YFYF++YF+FX--FX-Y"}},
          La=60, Lai=0);
PeanoGosperCurve.iterate(4);
draw(PeanoGosperCurve.paths(), bp+0.9*yellow);

shipout(bbox(3mm, Fill(black)));

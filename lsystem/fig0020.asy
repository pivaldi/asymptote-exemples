import Lsystem;
size(10cm,0);

Lsystem SierpinskiCurve=
  Lsystem("YF",
          new string[][]{{"X","YF+XF+Y"},{"Y","XF-YF-X"}},
          La=60, Lai=0);
SierpinskiCurve.iterate(7);
draw(SierpinskiCurve.paths(), bp+0.2*green);

shipout(bbox(Fill(paleyellow)));


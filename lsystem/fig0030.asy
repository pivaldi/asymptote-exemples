import Lsystem;
size(15cm,0);

Lsystem SierpinskiCarpet=
  Lsystem("F+F+F+F",
          new string[][]{{"F","FF+F+F+F+FF"}},
          La=90, Lai=0);
SierpinskiCarpet.iterate(4);
draw(SierpinskiCarpet.paths(), bp+0.2*green);

shipout(bbox(Fill(paleyellow)));

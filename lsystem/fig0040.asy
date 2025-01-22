import Lsystem;

size(15cm,0);
Lsystem Koch=Lsystem("+F--F--F",
                     new string[][]{{"F","F+F--F+F"}},
                     La=60, Lai=0);
Koch.iterate(4);
filldraw(Koch.paths()[0]&cycle, paleyellow, 1bp+black);
shipout(bbox(2mm, Fill(lightyellow)));

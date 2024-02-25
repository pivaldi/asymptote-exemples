import Lsystem;
size(10cm);

string[][] rules={{"F","FF"}, {"X","--FXF++FXF++FXF--"}};
Lsystem Sierpinski=Lsystem("FXF--FF--FF", rules, La=60, Lai=0);
Sierpinski.iterate(5);
draw(Sierpinski.paths(), bp+0.2*green);

shipout(bbox(Fill(paleyellow)));

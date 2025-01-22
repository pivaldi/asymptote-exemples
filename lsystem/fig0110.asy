import Lsystem;
size(15cm,0);

string[][] rules={{"F","FF"},
                  {"H","+F+FH++FFH++F+FF+FH++FFH++F+F-"}};

Lsystem H=Lsystem("+H",rules, La=90);
H.iterate(5);
draw(H.paths(), white);

shipout(bbox(3mm, Fill(black)));

import Lsystem;
size(12cm,0);

string[][] rules={
  {"A", "X+X+X+X+X+X+"},
  {"X", "[F+F+F+F[---X-Y]+++++F++++++++F-F-F-F]"},
  {"Y", "[F+F+F+F[---Y]+++++F++++++++F-F-F-F]"}
};

Lsystem spiral=Lsystem("AAAA",rules,La=15);

spiral.iterate(6);
draw(spiral.paths(), 0.9*green);

shipout(bbox(2mm, Fill(black)));

import Lsystem;
size(8cm,0);

string[][] rules={
  {"6","8F++9F----7F[-8F----6F]++"},
  {"7","+8F--9F[---6F--7F]+"},
  {"8","-6F++7F[+++8F++9F]-"},
  {"9","--8F++++6F[+9F++++7F]--7F"},
  {"F",""}
};

Lsystem Penrose=Lsystem("[7]++[7]++[7]++[7]++[7]", rules, La=36);
Penrose.iterate(4);
draw(Penrose.paths(), linewidth(bp));

shipout(bbox(2mm, FillDraw(lightyellow,linewidth(1mm))));

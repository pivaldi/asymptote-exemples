import Lsystem;
size(8cm,0);

string[][] rules={
  {"W", "YF++ZF----XF[-YF----WF]++"},
  {"X", "+YF--ZF[---WF--XF]+"},
  {"Y", "-WF++XF[+++YF++ZF]-"},
  {"Z", "--YF++++WF[+ZF++++XF]--XF"},
  {"F", ""}
};

Lsystem Penrose=Lsystem("[X][Y]++[X][Y]++[X][Y]++[X][Y]++[X][Y]",rules,La=36);

Penrose.iterate(3);
draw(Penrose.paths(), linewidth(bp));

shipout(bbox(2mm, FillDraw(lightyellow,linewidth(1mm))));

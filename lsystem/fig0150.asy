import Lsystem;
size(8cm,0);

string[][] rules={{"X","XF-F+F-XF+F+XF-F+F-X"}};
Lsystem squareCurve= Lsystem("F+XF+F+XF", rules, La=90, Lai=45);
squareCurve.iterate(5);
filldraw(squareCurve.paths()[0]&cycle, grey, 1bp+0.9*yellow);
shipout(bbox(3mm, Fill(black)));

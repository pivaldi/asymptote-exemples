import Lsystem;
size(8cm,0);

string[][] rules={{"L","+R-F-R+"}, {"R","-L+F+L-"}};
Lsystem squareCurve= Lsystem("L--F--L--F", rules, La=45, Lai=45);
squareCurve.iterate(9);
filldraw(squareCurve.paths()[0]&cycle, grey, 1bp+0.9*yellow);

shipout(bbox(3mm, Fill(black)));

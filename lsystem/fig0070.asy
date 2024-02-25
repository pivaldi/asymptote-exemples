// Quadratic Koch Island
import Lsystem;
size(10cm,0);

string[][] rules={{"F","F-F+F+FFF-F-F+F"}};
Lsystem QuadraticKochIsland=Lsystem("F+F+F+F", rules, La=90, Lai=0);
QuadraticKochIsland.iterate(3);
draw(QuadraticKochIsland.paths(), bp+0.9*yellow);
shipout(bbox(3mm, Fill(black)));

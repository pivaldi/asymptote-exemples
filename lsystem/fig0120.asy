import Lsystem;
size(10cm,0);

string[][] rules=new string[][]{{"F",""},{"X","-FX++FY-"},{"Y","+FX--FY+"}};
Lsystem dragon=Lsystem("X",rules, La=45, Lai=0);
dragon.iterate(12);
draw(dragon.paths(), white);

shipout(bbox(3mm, Fill(black)));

import Lsystem;
import animate;
animation A;
settings.render=0;
settings.tex="pdflatex";
settings.outformat="pdf";

size(10cm,0);

string[][] rules={{"A","[+BFA][-BFA][^BFA][&BFA]"}, {"B", "'(0.7071)"}};
Lsystem3 plant=Lsystem3("A", rules, La=45);
plant.iterate(5);
tree3 g=plant.tree3();

for (int angle=0; angle < 360; angle += 5) {
  currentprojection=orthographic(rotate(angle,Z)*(10,10,6));
  save();
  for (int i : g.keys)
    draw((path3)g[i], linewidth(bp)+(g[i].depth > 3 ? brown : 0.8*green));
  A.add();
  restore();
}

A.movie();

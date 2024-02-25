import Lsystem;
import animate;

settings.tex="pdflatex";
settings.outformat="pdf";

animation A;
size(10cm,0);

string[][] rules={{"X","^<XF^<XFX-F^>>XFX&F+>>XFX-F>X->"}};
Lsystem3 HilbertCurve3D=Lsystem3("X", rules, La=90, Lai=0);
HilbertCurve3D.iterate(3);

path3[] g=HilbertCurve3D.paths3();
triple M=(max(g)+min(g))/2;
currentprojection=currentprojection=orthographic((10,10,6));

for (int angle=0; angle < 360; angle += 2) {
  save();
  draw(rotate(angle,M,M+Z)*g[0], linewidth(bp)+0.9*yellow);
  A.add();
  restore();
}

A.movie(BBox(3mm, Fill(black)));

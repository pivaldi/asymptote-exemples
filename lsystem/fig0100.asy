import Lsystem;
size(10cm,0);
currentprojection=currentprojection=orthographic((10,5,6));

string[][] rules={{"X","^<XF^<XFX-F^>>XFX&F+>>XFX-F>X->"}};
Lsystem3 HilbertCurve3D=Lsystem3("X", rules, La=90);
HilbertCurve3D.iterate(3);

// !! Use a lot of memory !!
/* path3[] g=HilbertCurve3D.paths3();
   draw(g[0], linewidth(bp)+0.9*yellow);
*/

HilbertCurve3D.drawpaths3(linewidth(bp)+0.9*yellow);

shipout(bbox(3mm, Fill(black)));

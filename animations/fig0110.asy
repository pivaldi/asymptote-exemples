import geometry;
import animate;
// settings.tex="pdflatex";
// settings.outformat="pdf";

animation anim;
size(12cm);

point F1=(0,0), F2=(0,-3);
dot("F",F1);

ellipse el1=ellipse(F1,F2,2), el2;
point Fp1=shift(0,2*el1.a)*F1;
dot("F'",Fp1);

line tgt, saxe=line(F1,false,-F2);

for (int i=0; i < 360; i += 5) {
  save();
  ellipse el=rotate(i,F1)*el1;
  point M=intersectionpoints(el,saxe)[0];
  tgt=tangents(el,M)[0];
  draw(tgt, 0.8*red);
  draw((reflect(tgt)*el)^^el, linewidth(bp));
  anim.add();
  restore();
}
erase();
anim.movie();

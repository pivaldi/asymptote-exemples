import geometry;
import animate;
settings.tex="pdflatex";
settings.outformat="pdf";

animation Anim;

size(10cm,0);

circle C=circle(origin,1);
draw(C);
point A=point(C,0), B, M;
guide locus;


for (real a=0.001; a < 360; a += 5) {
  save();
  B=angpoint(C,a);
  triangle t=triangle(origin,A,B);
  draw(t);
  draw(incircle(t), bp+0.8*blue);
  triangle intouch=intouch(t);
  draw(intouch, dot);
  M=intouch(t.AC);
  label("$N$", Label("$M$", 0.8*red), "$P$", intouch);
  dot(M, 0.8*red);
  locus=locus..M;
  draw(locus, bp+0.8*red);
  Anim.add();
  restore();
}

// Anim.movie();
Anim.pdf(keep=true);


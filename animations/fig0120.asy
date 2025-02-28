import geometry;
import animate;

animation anim;
size(16cm);

point F1=(0, 0), F2=(10, 0);
dot("F", F2);
ellipse el1=ellipse(F1, F2, 6), el2;
draw(el1, linewidth(bp));
point Fp2=shift(2*el1.a, 0)*F2;
line tgt, saxe;
pen[] p=new pen[]{0.8*green, 0.8*blue, 0.8*yellow, cyan};
path[] locus=sequence(new path(int i){return nullpath;}, p.length);
real t=1/(p.length-1);

bool initlocus=true;
for (int i=0; i < 360; i += 1) {
  save();
  point Fm=rotate(i, F2)*Fp2;
  dot("F'", Fm);
  draw(Fm--F2, linewidth(2bp));
  point M=intersectionpoints(el1, line(F2, false, Fm))[0];
  tgt=tangents(el1, M)[0];
  draw(tgt, 0.8*red);
  el2=reflect(tgt)*el1;
  draw(el2.F1--el2.F2);

  for (int j=0; j < p.length; ++j) {
    point P=point(segment(el2.F2, Fm), 0.5+j*t/2);
    locus[j]=initlocus ? P : locus[j]--P;
    dot(P, p[j]);
    draw(locus[j], bp+p[j]);
  }

  dot(el2.F2);
  draw(el2, linewidth(bp));
  anim.add();
  restore();
  initlocus=false;
}

erase();
anim.movie();

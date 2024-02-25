import polyhedron_js;
import animation;

settings.tex="pdflatex";
settings.outformat="pdf"; // for opacity
settings.render=0;

animation A;
size(8cm);

// currentprojection=perspective(7,6,4); //if you want perspectivic look
currentprojection=orthographic(1,0.5,1); //if you want othographic look
currentlight=(1,1,2);
// currentlight=nolight;

int col=0;
pen[] fcol={palegreen+paleblue+lightgrey};
fcol.cyclic=true;

polyhedron[] parr;

for (int i=0; i < 360; i += 2) {
  parr[0]=rotate(i,Z)*rhombicosDodec;
  save();
  filldraw(parr,fcol,op=0.9);
  A.add();
  restore();
}

A.movie();

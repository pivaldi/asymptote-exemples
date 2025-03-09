size(10cm, 0);

path cle=unitcircle;

draw((-1.5, 0)--(2.5, 0), linewidth(10mm));
filldraw(cle, red+opacity(.5));
filldraw(shift((1, 0))*cle, blue+opacity(.5));

shipout(format="pdf");

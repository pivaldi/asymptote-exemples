// Toutes les cartes à points dans un seul pdf: ADDPDF
import carteApoints;
import animation;
settings.outformat="pdf";

animation A;

real sc=1/3;
for (int i=1; i < 10; i += 2) {
  picture pic;
  add(pic,scale(sc)*bbox(carteApoints(i),3mm));
  add(pic,shift((0,2.8*min(pic).y))*scale(sc)*bbox(carteApoints(i+1),3mm));
  A.add(pic);
}

A.movie();

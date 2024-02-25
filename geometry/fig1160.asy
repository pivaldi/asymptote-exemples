unitsize(1cm);
import geometry;

point pA = (0,0);
point pB = (5,0);
point pC = (5,5);

dot(pA^^pB^^pC);
draw(pA--pB--pC--cycle);

distance(Label("$x \; \mathrm{cm}$",align=S),pA,pB,3mm);
distance(Label("$y \; \mathrm{cm}$",align=E),pB,pC,3mm);
distance(Label("$z \; \mathrm{cm}$",align=I*dir(pA--pC)),pA,pC,-3mm);

shipout(bbox(xmargin=1mm,invisible));

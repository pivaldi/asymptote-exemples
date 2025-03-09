unitsize(1cm);
import solids;

currentprojection=orthographic(0, 100, 25);

real r=4, h=7;
triple O=(0, 0, 0);
triple Oprime=(0, 0, 3);
triple pS=(0, 0, h);
triple pA=(r*sqrt(2)/2, r*sqrt(2)/2, 0);
revolution rC=cone(O, r, h, axis=Z, n=1);

draw(surface(rC), blue+opacity(0.5));

skeleton s;
real tOprime=abs(Oprime)/h;
rC.transverse(s, reltime(rC.g, tOprime), currentprojection);
triple pAprime=relpoint(pA--pS, tOprime);
draw(s.transverse.back, dashed);
draw(s.transverse.front);

label("$S$", pS, N);
dot(Label("$O$", align=SE), O);
dot(Label("$O'$", align=SE), Oprime);
dot(Label("$A$", align=Z), pA);
dot(Label("$A'$", align=Z), pAprime);

draw(pS--O^^O--pA^^Oprime--pAprime, dashed);

size(0,0);

pair O=(2cm,2cm);
path cle=shift(O)*scale(2cm)*unitcircle;
pair M=point(cle,.6);

dot("$O$",O,SW);
dot("$M$",M,unit(M-O));

draw(cle);
draw((0,0)--(0,4cm),Arrow);
draw((0,0)--(4cm,0),Arrow);

draw(Label("$X_M$",position=EndPoint),M--(xpart(M),0),dotted);
draw(Label("$Y_M$",position=EndPoint),M--(0,ypart(M)),dotted);

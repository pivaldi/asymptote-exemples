import geometry;
size(6cm);

// currentcoordsys=cartesiansystem((1,2),i=(1,0.5),j=(-0.5,.75));
// show(currentcoordsys, xpen=invisible);

point A=(-1,0);
point B=(3,-1);
point C=(0,1);

circle cle=circle(A,C,B);
draw(cle,linewidth(2mm));

draw(arc(cle,A,B), dotsize()+red);
draw(arc(cle,A,B,CW), dotsize()+blue);

dot(Label("$A$", black), A, 1.5NW, white);
dot(Label("$B$", black), B, E, white);
dot(Label("$C$", black), C, NW, white);

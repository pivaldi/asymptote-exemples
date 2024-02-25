size(0,0);

pair A=0, B=(2cm,2cm), C=(4cm,0);

draw(A..B..C,linewidth(3mm));
draw(A{curl 1}..B..{curl 1}C,2mm+.8red);
dot(A--B--C);

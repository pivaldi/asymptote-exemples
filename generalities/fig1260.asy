size(0,0);

pair A=0, B=(3cm, 3cm), C=(6cm, 0);

draw(A..B..C,linewidth(3mm));
draw(A{curl 1}..B..{curl 1}C,2mm+.8red);
dot(A--B--C);

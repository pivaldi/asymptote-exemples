size(0,0);

pair A=0, B=(3cm,3cm), C=(6cm,0);

draw(A..B..C);
draw(A{curl 0}..B..{curl 0}C,red);
dot(A--B--C);

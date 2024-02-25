size(0,0);

pair A=0, B=(2cm,2cm), C=(4cm,0);

draw(A..B..C);
draw(A{curl 0}..B..{curl 0}C,red);
dot(A--B--C);

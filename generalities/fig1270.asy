size(0,0);

pair A=0, B=(3cm,4cm), C=(6cm,0);

draw(A..B..C);
draw(A{curl 0}..B..{curl 0}C,1mm+red+grey);
draw(A{curl 5}..B..{curl 0}C,1mm+green+grey);
draw(A{curl 10}..B..{curl 0}C,1mm+blue+grey);
draw(A{curl 10}..B..{curl 10}C,1mm+yellow+grey);
dot(A--B--C);

size(0,0);

pair A=0, B=(3cm,5cm), C=(6cm,0);
defaultpen(1mm);

draw(A..B..C);
draw(A.. tension 5 and 3 ..B.. tension 1 and 5 ..C,grey);
draw(A.. tension 5 and 1 ..B.. tension 3 and 5 ..C,.8red);
dot(A--B--C,linewidth(6bp));

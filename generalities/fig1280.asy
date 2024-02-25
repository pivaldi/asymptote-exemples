size(0,0);

pair A=0, B=(3cm,0.5cm), C=(6cm,0);

draw(A{N}..B{E}..C{S});
draw(A{N}::B{E}::C{S},red);
dot(A--B--C);

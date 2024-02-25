pair O=0;
draw(scale(2)*Label("N",.8red),O,10*N,linewidth(3mm));
draw(scale(2)*Label("S",.8red),O,10*S);
draw(scale(2)*Label("E",.8red),O,10*E);
draw(scale(2)*Label("W",.8red),O,10*W);

draw(rotate(45)*Label("NE"),O,5NE);
draw(rotate(-45)*Label("SE"),O,5SE);
draw(rotate(-45)*Label("NW"),O,5NW);
draw(rotate(45)*Label("SW"),O,5SW);

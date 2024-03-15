size(8cm,0);

pair A=(0.35,0.35), B=(0.6,0.6);

radialshade(unitsquare,black,A,0.15,lightgrey,B,.6);

dot(A,.8red);
dot(B,blue+grey);
draw(shift(A)*scale(.15)*unitcircle,dashed+.8red);
draw(shift(B)*scale(.6)*unitcircle,dashed+blue+grey);
clip(unitsquare);

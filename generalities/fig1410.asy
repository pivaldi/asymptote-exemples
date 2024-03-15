size(6cm,0);

path cle=scale(2)*unitcircle;

radialshade(scale(2)*cle, white, (0,0), 2, yellow, (0,0), 4);
radialshade(cle, white, (1,.5), 0, 0.8*blue, (0,0), 2);

for(real i=0; i<=length(cle); i+=.2)
  draw(point(cle,i)--(-2*I*dir(cle,i)+point(cle,i)),p=2mm+yellow+linecap(0));

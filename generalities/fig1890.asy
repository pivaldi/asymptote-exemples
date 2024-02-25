size(6cm,0);
path [] c;

c[1] = xscale(2)*unitcircle;
c[2] = shift((0,1))*c[1];
draw(c[1]^^c[2]);
draw(buildcycle(c[1],c[2]), .8red+4bp);

import geometry;
size(8cm,0);

currentcoordsys=cartesiansystem((2,1),i=(1,0.5),j=(-0.25,.75));
show(currentcoordsys, xpen=invisible);

point A=(-1,0);
point B=(0.5,-3sin(2));
dot("$A$",A,S,red);
dot("$B$",B,N,red);

line l=line(A,B);
circle c=circle((point)(0,-sqrt(2)/2),exp(1));
draw(l);
draw(c);

/*<asyxml><view file="modules/geometry.asy" type="point[]" signature="intersectionpoints(line,circle)"/></asyxml>*/
point[] inter=intersectionpoints(l,c);
dot("$M$", inter[0], 2S, red);
dot("$N$", inter[1], 2N+0.5W, red);

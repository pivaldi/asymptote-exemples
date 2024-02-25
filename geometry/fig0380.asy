import geometry;
size(10cm);

// currentcoordsys=cartesiansystem((2,1),i=(1,0.5),j=(-0.25,.75));
// show(currentcoordsys);

// Enlarge the bounding box of the current picture
draw(box((-6,-5), (10,2)), invisible);

point A=(-2,-2);
point B=(2,-3);
dot("$A$",A,N,red);
dot("$B$",B,S,red);

line l=line(A,B);
draw(l);

point C=(2,-1.5);
dot("$C$",C,N);

hyperbola h=hyperbola(C,sqrt(2),sqrt(2)/2,0);
draw(h);

/*<asyxml><view file="modules/geometry.asy" type="point[]" signature="intersectionpoints(line,hyperbola)"/></asyxml>*/
point[] inter=intersectionpoints(l,h);
dot("$M$", inter[0], 2N+E, red);
dot("$N$", inter[1], 2S+E, red);

import geometry;
size(10cm);

// currentcoordsys=cartesiansystem((2,1),i=(1,0.5),j=(-0.25,.75));
// show(currentcoordsys);

point A=(-1,-1);
point B=(2,1);
dot("$A$",A,S,red);
dot("$B$",B,N,red);

line l=line(A,B);
draw(l);

point F=(2,-1.5);
dot("$F$",F,N);

parabola p=parabola(F,0.2,110);
draw(p);

/*<asyxml><view file="modules/geometry.asy" type="point[]" signature="intersectionpoints(line,parabola)"/></asyxml>*/
point[] inter=intersectionpoints(l,p);
dot("$M$", inter[0], 2N+E, red);
dot("$N$", inter[1], S+2E, red);

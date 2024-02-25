import geometry;
size(8cm,0);

currentcoordsys=cartesiansystem((2,1),i=(1,0.5),j=(-0.25,.75));
show(currentcoordsys);

point A=(-1,0);
point B=(0.5,-3sin(2));
dot("$A$",A,S,red);
dot("$B$",B,N,red);

line l=line(A,B);
ellipse el=ellipse((0,-sqrt(2)/2),3,2,90);
draw(l);
draw(el,Arrow);

/*<asyxml><view file="modules/geometry.asy" type="point[]" signature="intersectionpoints(line,ellipse)"/></asyxml>*/
point[] inter=intersectionpoints(l,el);
dot("$M$", inter[0], 4N+2W, red);
dot("$N$", inter[1], 2S+0.5E, red);

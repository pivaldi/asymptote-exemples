import geometry;
size(8cm,0);

currentcoordsys=cartesiansystem((1,2),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

real R=2;

point A=(1,1);
dot("$A$", A, S, red);
point B=A+(2,1);
dot("$B$", B, N, blue);

arc a=arc(circle(A,R), -40, 180);
arc b=arc(circle(B,R), -45, 220);
line l=line(A,B);

draw(a,red);
draw(b,blue);
draw(l);

/*<asyxml><view file="modules/geometry.asy" type="point[]" signature="intersectionpoints(arc,arc)"/></asyxml>*/
point[] inter=intersectionpoints(a,b);
dot(inter);

/*<asyxml><view file="modules/geometry.asy" type="point[]" signature="intersectionpoints(line,arc)"/></asyxml>*/
point[] inter=intersectionpoints(l,a);
dot(inter);

point[] inter=intersectionpoints(l,b);
dot(inter);

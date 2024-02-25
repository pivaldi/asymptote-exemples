import geometry;
size(8cm,0);

currentcoordsys=cartesiansystem((2,1),i=(1,0.5),j=(-0.25,.75));
show(currentcoordsys);

// Enlarge the bounding box of the current picture
draw(box(locate((-1,-1.5)),locate((2,1))),invisible);

point A=(0,-1);
point B=(1.25,1);
point C=(-1,0.5);

dot("$A$",A,SW,red);
dot("$B$",B,E,red);
dot("$C$",C,N,red);


line l=rotateO(20)*line((0,0),(1,0));
/*<asyxml><view file="modules/geometry.asy" type="parabola" signature="parabola(point,point,point,line)"/></asyxml>*/
parabola p=parabola(A,B,C,l);
draw(p,blue);
draw(p.D,blue);

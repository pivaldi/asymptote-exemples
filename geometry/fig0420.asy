import geometry;
size(10cm,0);

// currentcoordsys=cartesiansystem((0,0),i=(1,1),j=(-0.5,.75));
// show(currentcoordsys);

point A=(-1,-1);
point B=(0.75,0.5);
dot("$A$",A,NW,red);
dot("$B$",B,N,red);

circle c1=circle(A,1.5);
circle c2=circle(B,2);
draw(c1^^c2);

/*<asyxml><view file="modules/geometry.asy" type="line" signature="radicalline(circle,circle)"/></asyxml>*/
draw(radicalline(c1,c2));
/*<asyxml><view file="modules/geometry.asy" type="point" signature="radicalcenter(circle,circle)"/></asyxml>*/
dot(radicalcenter(c1,c2));

dotfactor*=2;

/*<asyxml><view file="modules/geometry.asy" type="point[]" signature="intersectionpoints(circle,circle)"/></asyxml>*/
point[] inter=intersectionpoints(c1,c2);
dot("$M$", inter[0], 2SW, red);
dot("$N$", inter[1], 2NE, red);

import geometry;
size(8cm);

// currentcoordsys=cartesiansystem((2,1),i=(1,0.5),j=(-0.25,.75));
// show(currentcoordsys);

dotfactor *=1.5;
triangle t=triangleabc(3,4,5);
drawline(t, linewidth(bp));
label(t, alignFactor=3);

line l=line((-1,-2), (1,0.5));
draw(l, 0.8*red);
/*<asyxml><view file="modules/geometry.asy" type="point[]" signature="intersectionpoints(triangle,line,bool)"/></asyxml>*/
dot(intersectionpoints(t,l), 0.8*red);

circle C=2*circle(t);
draw(C, 0.8*blue);
/*<asyxml><view file="modules/geometry.asy" type="point[]" signature="intersectionpoints(triangle,conic,bool)"/></asyxml>*/
dot(intersectionpoints(t,C, true), 0.8*blue);

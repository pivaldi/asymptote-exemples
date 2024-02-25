import geometry;
size(10cm,0);

// currentcoordsys=cartesiansystem((2,1),i=(1,0.5),j=(-0.25,0.75));
// show(currentcoordsys);

triangle t=triangle((-1,0), (2,0), (0,2));

drawline(t, linewidth(bp));
/*<asyxml><view file="modules/geometry.asy" type="void" signature="label(picture,Label,Label,Label,triangle,real,real,pen,filltype)"/></asyxml>*/
label(t, alignFactor=4);

/*<asyxml><view file="modules/geometry.asy" type="triangle" signature="anticomplementary(triangle)"/></asyxml>*/
triangle at=anticomplementary(t);
draw(at, bp+0.8green);
label("$A'$", "$B'$", "$C'$", at, blue);

draw(segment(at.AB), bp+0.8green, StickIntervalMarker(2,1));
draw(segment(at.BC), bp+0.8green, StickIntervalMarker(2,2));
draw(segment(at.CA), bp+0.8green, CrossIntervalMarker(2,3));

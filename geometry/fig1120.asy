import geometry;
size(10cm,0);

// currentcoordsys=cartesiansystem((2,1),i=(1,0.5),j=(-0.25,0.75));
// show(currentcoordsys);

triangle t=triangle((-1,0), (2,0), (0,2));

drawline(t, linewidth(bp));
label(t,alignFactor=2, alignAngle=90);

/*<asyxml><view file="modules/geometry.asy" type="triangle" signature="symmedial(triangle)"/></asyxml>*/
triangle st=symmedial(t);
draw(st, bp+0.8green);
label("$A'$", "$B'$", "$C'$", st, alignAngle=45, 0.8green);

/*<asyxml><view file="modules/geometry.asy" type="line" signature="median(vertex)"/></asyxml>*/
line mA=median(t.VA);
draw(mA, blue);
dot("$M_A$",midpoint(t.BC), 1.5E, blue);
draw(segment(t.BC), bp+blue, StickIntervalMarker(2,2,blue));

/*<asyxml><view file="modules/geometry.asy" type="line" signature="bisector(vertex,real)"/></asyxml>*/
line bA=bisector(t.VA);
draw(bA, grey);
/*<asyxml><view file="modules/geometry.asy" type="point" signature="bisectorpoint(side)"/></asyxml>*/
dot("$B_A$", bisectorpoint(t.BC));

/*<asyxml><view file="modules/geometry.asy" type="line" signature="symmedian(vertex)"/></asyxml>*/
line sA=symmedian(t.VA);
draw(sA, 0.8*green);

draw(symmedian(t.VB), 0.8*green);
draw(symmedian(t.VC), 0.8*green);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="symmedian(triangle)"/></asyxml>*/
point sP=symmedian(t);
dot(sP);

markangle(sA, (line) t.AC, radius=2cm, StickIntervalMarker(1,1));
markangle((line) t.AB, mA, radius=2cm, StickIntervalMarker(1,1));
markangle(mA, sA, radius=10cm, StickIntervalMarker(2,2));

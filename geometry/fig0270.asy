import geometry;
size(8cm,0);

currentcoordsys=cartesiansystem((0,0),i=(1,1),j=(-0.5,.75));
show("","$\vec{u}$", "$\vec{v}$", currentcoordsys, ipen=blue);
show(defaultcoordsys);

point A=(0,0);

real R=2;
/*<asyxml><view file="modules/geometry.asy" type="" signature="struct circle"/></asyxml>*/
circle C=circle(A,R);
draw(C,1.5mm+red);

circle Cp=circle(point(defaultcoordsys,A),R);
draw(Cp,0.75mm+blue);

// One can draw in the 'currentcoordsys' a circle definided in
// the 'defaultcoordsys'
/*<asyxml><view file="modules/geometry.asy" type="path" signature="*(coordsys,path)"/></asyxml>*/
draw(currentcoordsys*Cp, red+blue);

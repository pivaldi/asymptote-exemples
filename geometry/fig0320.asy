import geometry;
size(10cm,0);

currentcoordsys=cartesiansystem((2,1),i=(1,0.5),j=(-0.25,.75));
show(currentcoordsys);

point F=(0.25,0.5);

dot("$F$",F,SW,red);

// Enlarge the bounding box of the current picture
draw(box(locate((-1.5,0)),locate((1,1))), invisible);

line l=rotateO(10)*line((0,-0.4),(1,-0.4));
draw(l);

/*<asyxml><view file="modules/geometry.asy" type="parabola" signature="parabola(point,line)"/></asyxml>*/
parabola p=parabola(F,l);
draw(p,linewidth(3mm));

/*<asyxml><view file="modules/geometry.asy" type="parabola" signature="parabola(point,point)"/></asyxml>*/
draw(parabola(p.F,p.V),2mm+red);

/*<asyxml><view file="modules/geometry.asy" type="parabola" signature="parabola(point,real,real)"/></asyxml>*/
draw(parabola(p.F,p.a,p.angle),1mm+green);

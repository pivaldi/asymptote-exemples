import geometry;
size(8cm,0);

// currentcoordsys=cartesiansystem((1,2),i=(1,0.5),j=(-0.5,.75));
// show(currentcoordsys, xpen=invisible);

point C=(1,1);
dot("$C$", C, dir(30), red);

arc a=arc(ellipse(C,2,1,30), -45, 45);
draw(a, linewidth(4mm));
dot("$F_1$", a.el.F1, dir(210), red);

/*<asyxml><view file="modules/geometry.asy" type="void" signature="markarc(picture,Label,int,real,real,arc,arrowbar,pen,pen,margin,marker)"/></asyxml>*/
markarc(format("%0g", degrees(a)), radius=2.5*markangleradius(), a);

/*<asyxml><view file="modules/geometry.asy" type="arc" signature="*(real, explicit arc)"/></asyxml>*/
draw(0.5*a, 2mm+yellow);

arc ap=a/3;
draw(ap, 1mm+blue);
markarc(format("%0g", degrees(ap)), radius=1.5*markangleradius(), ap, blue);

import geometry;
size(8cm,0);

// currentcoordsys=cartesiansystem((1,2),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(1,1);
dot("$A$", A, NW, red);

real R=2;
arc C=arc(circle(A,R), 45, 210, CW);
draw(C,linewidth(4mm));

/*<asyxml><view file="modules/geometry.asy" type="void" signature="markarc(picture,Label,int,real,real,arc,arrowbar,pen,pen,margin,marker)"/></asyxml>*/
markarc(format("%0g",degrees(C)), C, radius=markangleradius(), Arrow);

/*<asyxml><view file="modules/geometry.asy" type="arc" signature="*(real, explicit arc)"/></asyxml>*/
draw(0.5*C, 2mm+yellow);

arc Cp=C/3;
draw(Cp, 1mm+blue);
markarc(format("%0g",degrees(Cp)), radius=-25mm, Cp, blue, Arrow);

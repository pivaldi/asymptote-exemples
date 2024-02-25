import geometry;
size(10cm,0);

currentcoordsys=cartesiansystem((2,1),i=(1,0.5),j=(-0.25,.75));
show(currentcoordsys);

point A=(1,1);
dot("$A$",A,S,red);

real a=3, b=2;
ellipse el=ellipse(A,a,b,0);
draw(el,Arrow);

/*<asyxml><view file="modules/geometry.asy" type="ellipse" signature="*(transform,ellipse)"/></asyxml>*/
draw(scale(0.5)*el,red,Arrow);

draw(scale(0.5,A)*el,2mm+0.8*blue);

/*<asyxml><view file="modules/geometry.asy" type="ellipse" signature="/(ellipse,real)"/></asyxml>*/
draw(el/2,0.75mm+green,Arrow(4mm));

// Note that the point 'point(el,0)' is always at the same place relatively to 'el'.
draw(rotateO(135)*el/2,0.8*yellow,Arrow);

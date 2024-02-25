import geometry;
size(8cm,0);

currentcoordsys=cartesiansystem((2,1),i=(1,0.5),j=(-0.25,.75));
show(currentcoordsys);

point A=(1,1);
dot("$A$",A,S,red);

real R=2;
circle C=circle(A,R);
draw(C,Arrow);

/*<asyxml><view file="modules/geometry.asy" type="ellipse" signature="*(transform,circle)"/></asyxml>*/
draw(scale(0.5)*C,red,Arrow);

draw(scale(0.5,A)*C,2mm+0.8*blue);

/*<asyxml><view file="modules/geometry.asy" type="circle" signature="/(explicit circle,real)"/></asyxml>*/
draw(C/2,0.75mm+green,Arrow(4mm));

// Note that the point 'point(C,0)' is always at the same place relatively to 'C'.
draw(rotateO(180)*C/2,0.8*yellow,Arrow);

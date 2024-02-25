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
ellipse el=xscale(2)*C;
draw(el,blue,Arrow);

// /*<asyxml><view file="modules/geometry.asy" type="transform" signature="xscale(real,point)"/></asyxml>*/
ellipse el=xscale(2,A)*C;
draw(el,red,Arrow);

import geometry;
size(8cm,0);

currentcoordsys=cartesiansystem((2,1),i=(1,1),j=(-0.5,1));
show(currentcoordsys, xpen=invisible);

point A=(3.5,1),
B=(1.75,3),
C=(-1,2),
D=(-1.5,-0.5),
F=(1.5,-1);

dot("$A$",A);
dot("$B$",B,N);
dot("$C$",C,NW);
dot("$D$",D,SW);
dot("$F$",F,SE);

/*<asyxml><view file="modules/geometry.asy" type="ellipse" signature="ellipse(point,point,point,point,point)"/></asyxml>*/
ellipse el=ellipse(A,B,C,D,F);
draw(el);

dot("$F_1$",el.F1,NW);
dot("$F_2$",el.F2,NW);

/*<asyxml><view file="modules/geometry.asy" type="coordsys" signature="canonicalcartesiansystem(ellipse)"/></asyxml>*/
coordsys R=canonicalcartesiansystem(el);
show("$C$", "$\vec{u}$", "$\vec{v}$", R, xpen=blue);

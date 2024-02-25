import geometry;
size(10cm,0);

// currentcoordsys=cartesiansystem((1,2), i=(1,0.5), j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(1,1);
dot("$A$", A, S, red);

arc C=arc(circle(A,2), 45, 270);
draw(C, Arrow);

/*<asyxml><view file="modules/geometry.asy" type="real" signature="degrees(arc)"/></asyxml>*/
write(degrees(C)); // Output is 225

draw(complementary(C), grey+dashed);
distance("$R=2$",A,point(C,0),0);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="relpoint(arc,real)"/></asyxml>*/
dot("relpoint(C, 0)", relpoint(C,0),E);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="point(arc,abscissa)"/></asyxml>*/
dot("relpoint(C, 0.25)", point(C,Relative(0.25)),N);// point(C,Relative(0.25)) is similar to relpoint(C,0.25)
dot("relpoint(C, -0.5)", relpoint(C,-0.5),E);
dot("relpoint(C, 0.5)",  relpoint(C,0.5),W);
dot("relpoint(C, 0.75)", relpoint(C,0.75),W);
dot("relpoint(C, 1.25)", relpoint(C,1.25),E);

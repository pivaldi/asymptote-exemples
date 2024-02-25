import geometry;
size(12cm,0);

// currentcoordsys=cartesiansystem((1,2), i=(1,0.5), j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(1,1);
dot("$A$", A, S, red);

arc C=arc(ellipse(A,2,1,45), 45, 270, fromCenter);
// arc C=arc(ellipse(A,2,1), 45, -45);

draw(C, Arrow);
draw(complementary(C), grey+dashed);
distance("$R=2$",A,point(C.el,0),0);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="relpoint(arc,real)"/></asyxml>*/
dot("relpoint(C, 0)", relpoint(C,0),W);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="point(arc,abscissa)"/></asyxml>*/
dot("relpoint(C, 0.25)", point(C,Relative(0.25)),W);// point(C,Relative(0.25)) is similar to relpoint(C,0.25)
dot("relpoint(C, -0.5)", relpoint(C,-0.5),E);
dot("relpoint(C, 0.5)",  relpoint(C,0.5),W);
dot("relpoint(C, 0.75)", relpoint(C,0.75),SE);
dot("relpoint(C, 1.25)", relpoint(C,1.25),E);

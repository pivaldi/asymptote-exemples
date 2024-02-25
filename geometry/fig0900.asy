import geometry;
size(10cm,0);

// currentcoordsys=cartesiansystem((1,2),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(3.5,0.5);
dot("$A$", A, S, red);

arc C=arc(circle(A,2), 60, 270, CCW);
draw(C,Arrow);
draw(complementary(C), grey+dashed);
distance("$R=2$",A,point(C.el,0),0);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="angpoint(arc,real)"/></asyxml>*/
dot("angpoint(C, 90)",  angpoint(C,90), W);

dot("angpoint(C, 180)", point(C,angabscissa(180)), SW); // point(C,angabscissa(180)) is similar to angpoint(C,180)

dot("angpoint(C, 270)", angpoint(C,270), E);
dot("angpoint(C, -45)", angpoint(C,-45), E);

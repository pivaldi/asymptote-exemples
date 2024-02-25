import geometry;
unitsize(1.5cm);

// currentcoordsys=cartesiansystem((1,2),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

real R=2;
point A=(3.5,1.5);

dot("$A$",A,S,red);

arc C=arc(circle(A,2), 45, 270);
draw(C,Arrow);
draw(complementary(C),grey+dashed);
distance("$R=2$",A,point(C,0),0);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="point(arc,real)"/></asyxml>*/
dot("point(C, 15)", point(C,15), 2N, 3mm+blue);

dot("point(C, 30)",
    point(C,nodabscissa(30)), // OR point(C,40)
    2W,3mm+blue);

/*<asyxml><view file="modules/geometry.asy" type="int" signature="arcnodesnumber(explicit arc)"/></asyxml>*/
dot(Label("point(C, 3*arcnodesnumber(R)/4)",UnFill),
    point(C, 3*arcnodesnumber(C)/4), 2E, 3mm+blue);

dot((path)C, yellow);

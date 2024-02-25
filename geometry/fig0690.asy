import geometry;
size(10cm,0);

// currentcoordsys=cartesiansystem((0,0),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(4,2);
dot("$A$",A,S,red);

real R=2;
circle C=circle(A,R);
draw(C,linewidth(1mm));
draw("$R="+(string)R+"$", A--point(C,0), N, Arrows);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="point(explicit circle,explicit real)"/></asyxml>*/
dot("point(C, 15)", point(C,15),2E,3mm+blue);

/*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="nodabscissa(real)"/></asyxml>*/
dot("point(C, 40)",
    point(C,nodabscissa(40)),
    2W,3mm+blue);
// point(C,nodabscissa(40)) can be replaced by point(C,40)

/*<asyxml><view file="modules/geometry.asy" type="int" signature="circlenodesnumber(real)"/></asyxml>*/
dot("point(C, 3*circlenodesnumber(R)/4)",
    point(C, 3*circlenodesnumber(R)/4), S, 3mm+blue);

dot((path)C, yellow);

write(length((path)C));

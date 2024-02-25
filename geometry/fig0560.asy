import geometry;
size(10cm,0);

// currentcoordsys=cartesiansystem((0,0),i=(1,0.5),j=(-0.5,.75));
// show(currentcoordsys, xpen=invisible);

point A=(0,0), B=(2,1);

line l=line(A,B);
draw(l);
show(l, blue);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="relpoint(line,real)"/></asyxml>*/
point P=relpoint(l, 1);
dot("relpoint(l, 1)", P, 2E,linewidth(2mm));
/*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="relabscissa(line,point)"/></asyxml>*/
dot(point(l,relabscissa(l,P)), red);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="curpoint(line,real)"/></asyxml>*/
point P=curpoint(l, 1);
dot("curpoint(l, 1)", P, SE, blue+2mm);
/*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="curabscissa(line,point)"/></asyxml>*/
dot(point(l,curabscissa(l,P)), yellow);


point P=relpoint(l, 2);
dot("relpoint(l, 2)", P, NW,linewidth(2mm));
dot(point(l,relabscissa(l,P)), red);

point P=curpoint(l, 2);
dot("curpoint(l, 2)", P, NW, blue+2mm);
dot(point(l,curabscissa(l,P)), yellow);

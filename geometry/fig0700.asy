import geometry;
size(10cm,0);

// currentcoordsys=cartesiansystem((0,0),i=(1,0.5),j=(-0.5,.75));
// show(currentcoordsys, xpen=invisible);

point A=(4,2);

real a=2, b=3;
ellipse el=ellipse(A,a,b);

dot("$C$",el.C,N,red);
draw(el,linewidth(1mm));

/*<asyxml><view file="modules/geometry.asy" type="point" signature="point(explicit ellipse,explicit real)"/></asyxml>*/
dot("point(el, 0)", point(el,0),N,3mm+blue);

dot("point(el, 15)", point(el,15),2W,3mm+blue);

/*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="nodabscissa(real)"/></asyxml>*/
dot("point(el, 40)",
    point(el,nodabscissa(40)),
    2W,3mm+blue);
// point(el,nodabscissa(40)) can be replaced by point(el,40)

/*<asyxml><view file="modules/geometry.asy" type="int" signature="circlenodesnumber(real)"/></asyxml>*/
dot("point(el, 3*circlenodesnumber(max(a,b))/4)",
    point(el, 3*circlenodesnumber(max(a,b))/4), S, 3mm+blue);

dot((path)el, yellow);

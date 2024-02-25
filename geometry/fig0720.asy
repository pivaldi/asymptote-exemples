import geometry;
size(12cm);

// currentcoordsys=cartesiansystem((0,0),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point C=(3,2);
dot("$C$", C, N, red);

// Enlarge the bounding box of the current picture.
draw(box((0,0),(5,4.5)), invisible);

hyperbola h=hyperbola(C, 1, 2);

draw(h, bp+dashed); /* Defered drawing to adjust the path to the final
                       bounding box.*/

// Define the bounding box to draw the hyperbola.
// Try finalbounds(); to determine the final bounding box.
h.bmin=(0,0.5); h.bmax=(5,4);
draw((path)h, linewidth(bp)); /* The path of 'p' is restricted to the box whose
                                 the corners are p.bmin, p.bmax.*/

/*<asyxml><view file="modules/geometry.asy" type="point" signature="point(explicit hyperbola,explicit real)"/></asyxml>*/
dot("point(h, 0)", point(h,0), 2W, 3mm+blue);

dot("point(h, 15)", point(h,15), 2W, 3mm+blue);

/*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="nodabscissa(real)"/></asyxml>*/
dot("point(h, 40)", point(h,nodabscissa(40)), 2W,3mm+blue);
// point(h,nodabscissa(40)) can be replaced by point(h,40)

/*<asyxml><view file="modules/geometry.asy" type="real[]" signature="bangles(picture,hyperbola)"/></asyxml>*/
real[][] bg=bangles(h);

dot((path)h, yellow);

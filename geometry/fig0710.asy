import geometry;
size(12cm);

// currentcoordsys=cartesiansystem((0,0),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point F=(2,-1.5);
dot("$F$",F,N,red);

// Enlarge the bounding box of the current picture.
draw(box((-0.5,-0.4),(4,1.5)),invisible);

parabola p=parabola(F,0.2,90);

draw(p,bp+dashed); /* Defered drawing to adjust the path to the final
                   bounding box.*/

// Define the bounding box to draw the parabola.
// Try finalbounds(); to determine the final bounding box.
p.bmin=(-0.5,-0.4);
p.bmax=(3.7,0.75);
draw((path)p, linewidth(bp)); /* The path of 'p' is restricted to the box whose
                  the corners are p.bmin, p.bmax.*/

/*<asyxml><view file="modules/geometry.asy" type="point" signature="point(explicit parabola,explicit real)"/></asyxml>*/
dot("point(p, 0)", point(p,0),2E,3mm+blue);

dot("point(p, 15)", point(p,15),2W,3mm+blue);

/*<asyxml><view file="modules/geometry.asy" type="abscissa" signature="nodabscissa(real)"/></asyxml>*/
dot("point(p, 40)", point(p,nodabscissa(40)), 2W,3mm+blue);
// point(p,nodabscissa(40)) can be replaced by point(p,40)

/*<asyxml><view file="modules/geometry.asy" type="real[]" signature="bangles(picture,parabola)"/></asyxml>*/
real[] bg=bangles(p);

/*<asyxml><view file="modules/geometry.asy" type="int" signature="parabolanodesnumber(parabola,real,real)"/></asyxml>*/
dot("point(p, parabolanodesnumber(p,bg[0],bg[1])/2)",
    point(p, parabolanodesnumber(p,bg[0],bg[1])/2), S, 3mm+blue);

dot((path)p, yellow);

import geometry;
size(12cm,0);

currentcoordsys=cartesiansystem((0,0),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point F=(2,-1.5);
dot("$F$",F,N,red);

// Enlarge the bounding box of the current picture.
draw(box((-0.5,-0.4),(4,1.5)),invisible);

parabola p=parabola(F,0.2,90);

// Define the bounding box to draw the parabola.
// Try finalbounds(); to determine the final bounding box.
p.bmin=(-0.5,-0.4);
p.bmax=(3.7,0.75);

draw(p,dashed); /* Defered drawing to adjust the path to the final
                   bounding box.*/

draw((path)p); /* The path of 'p' is restricted to the box whose
                  the corners are p.bmin, p.bmax.*/

/*<asyxml><view file="modules/geometry.asy" type="point" signature="relpoint(explicit parabola,real)"/></asyxml>*/
dot("relpoint(p, 0)",relpoint(p,0),SE);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="point(parabola,abscissa)"/></asyxml>*/
dot("relpoint(p, 0.25)",point(p,Relative(0.25)),NE);
// point(p,Relative(0.25)) can be replaced by relpoint(p,0.25) OR point(p,relabscissa(0.25))

dot("relpoint(p, -0.5)",relpoint(p,-0.5),W);
dot("relpoint(p, -1)",relpoint(p,-1),W);
dot("relpoint(p, 1)",relpoint(p,1),E);

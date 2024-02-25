import geometry;
size(10cm);

point F=(2,-1.5);
dot("$F$",F,N,red);

// Enlarge the bounding box of the current picture.
draw(box((-1,-1),(3,1.5)),dashed);//,invisible);

parabola p=parabola(F,0.2,90);

// Define the bounding box to draw the parabola.
// Try finalbounds(); to determine the final bounding box.
p.bmin=(-0.75,-0.4);
p.bmax=(2.75,0.75);

draw(box(p.bmin,p.bmax),red);

draw(p,dashed);/* Defered drawing to adjust the path to the final
                  bounding box.*/

draw((path)p,red); /* The path of 'p' is restricted to the box whose
                  the corners are p.bmin, p.bmax.*/


unitsize(1cm);
import geometry;
dotfactor*=1.5;
linemargin=5mm;

// currentcoordsys=cartesiansystem((2,1),i=(1,0.5),j=(-1,1));
show(currentcoordsys);

point A=(-3,-1), B=(3,4);
line l1=line(A,B);

draw(l1,red);
dot("$A$",A,SE);
dot("$B$",B,NW);

point M=(2,-2);
dot("$M$",M);

/*<asyxml><view file="modules/geometry.asy" type="line" signature="parallel(point,line)"/></asyxml>*/
draw(parallel(M,l1),red);

/*<asyxml><view file="modules/geometry.asy" type="line" signature="perpendicular(point,line)"/></asyxml>*/
line perp=perpendicular(M,l1);
draw(perp);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="intersectionpoint(line,line)"/></asyxml>*/
point interp=intersectionpoint(l1,perp);
dot(interp,green);

/*<asyxml><view file="modules/geometry.asy" type="void" signature="markrightangle(picture,point,point,point,real,pen,margin,filltype)"/></asyxml>*/
markrightangle(l1.A,interp,rotate(180,interp)*M,size=5mm);

draw(box((-5,-5),(5,5)),invisible);

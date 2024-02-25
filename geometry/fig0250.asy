unitsize(2cm);
import geometry;
linemargin=5mm;

// currentcoordsys=cartesiansystem((2,1),i=(1,0.25),j=(-0.25,.75));
// show(li=Label("$\vec{\imath}$",align=S,EndPoint), currentcoordsys);

point A=(-1,-1), B=(1,0.5);
line l1=line(A,B);

draw("$(l_1)$",l1);
draw("$s_1$",(segment) l1, 2pt+red,
     marker(stickframe,markuniform(2,true)));

/*<asyxml><view file="modules/geometry.asy" type="line" signature="bisector(segment,real)"/></asyxml>*/
line bis=bisector((segment) l1);
draw(bis,red);

/*<asyxml><view file="modules/geometry.asy" type="void" signature="show(picture,line,pen)"/></asyxml>*/
show(bis,grey);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="point(line,real)"/></asyxml>*/
dot(point(bis,1.5));

draw(box(locate((-2,-2)),locate((2,2))),invisible);

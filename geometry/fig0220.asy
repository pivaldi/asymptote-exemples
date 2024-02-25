unitsize(2cm);
import geometry;

currentcoordsys=cartesiansystem((2,1),i=(1,0.25),j=(-0.25,.75));
show(lo=Label("$O$",align=SE+0.5E), currentcoordsys);

pair A=(1,1), B=(2,2);
line l1=line(A,B);
draw("$(l_1)$",l1);

line l2=rotate(100,(3,3))*l1;
draw("$(l_2)$",l2);
write(locate(intersectionpoint(l1,l2)));
/*<asyxml><view file="modules/geometry.asy" type="line" signature="bisector(line,line,real,bool)"/></asyxml>*/
line bis=bisector(l1,l2);
draw(bis);

line Bis=bisector(l1,l2,90);
draw(Bis,0.8*red);
markangleradiusfactor*=5;

/*<asyxml><view file="modules/geometry.asy" type="void" signature="markangle(picture,Label,int,real,real,line,line,arrowbar,pen,filltype,margin,marker)"/></asyxml>*/
markangle(2, l1, l2, StickIntervalMarker(2,2,true));
markangle(2, reverse(l2), l1, radius=1.25*markangleradius(), StickIntervalMarker(2,1,true));

/*<asyxml><view file="modules/geometry.asy" type="bool" signature="concurrent(...line[])"/></asyxml>*/
if (concurrent(bis,l1,l2,Bis)) label("Concurrent",(3,3), dir(135));

draw(box(locate((-1,0)),locate((5,5))),invisible);

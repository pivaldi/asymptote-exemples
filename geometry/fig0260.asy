import geometry;

size(5cm,0);

point M=(1,1);
point N=(0.25,0.28);
point P=(0.75,0.66);

path g=origin--M;
line l=line(origin,M);
pen p=linewidth(5mm);
draw(l,p);

dot(N,p+red);
dot(N,blue);

dot(P,p+red);
dot(P,blue);

draw(box(origin,(1,1)),invisible);

/*<asyxml><view file="modules/geometry.asy" type="bool" signature="@(point,line)"/></asyxml>*/
write(N@l);// Return 'false'

/*<asyxml><view file="modules/geometry.asy" type="bool" signature="onpath(picture,path,point,pen)"/></asyxml>*/
write(onpath(g,N,p));// Return 'true'
write(onpath(g,P,p));// Return 'false'

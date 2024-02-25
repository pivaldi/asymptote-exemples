import geometry;

size(8cm,0);

currentcoordsys=cartesiansystem((0,0),i=(1,1),j=(-0.5,.75));
show(currentcoordsys);

point A=(-0.5,.75);
point B=(1,1);
dot("$A$",A,SE);
dot("$B$",B,NW);

line l=line(A,B,false);
line ll=hline()+B;

circle c=circle((point)(0.5,0.5),2);
draw(l^^ll);
draw(complementary(l),dashed+grey);
draw(c);

dotfactor*=2;

/*<asyxml><view file="modules/geometry.asy" type="point[]" signature="intersectionpoints(line,circle)"/></asyxml>*/
dot(intersectionpoints(l,c),red);
dot(intersectionpoints(ll,c),red);

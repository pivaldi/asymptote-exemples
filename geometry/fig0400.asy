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

ellipse el=ellipse((point)(0.5,0.5),3,2);
draw(l^^ll);
draw(complementary(l),dashed+grey);
draw(el);

dotfactor*=2;

/*<asyxml><view file="modules/geometry.asy" type="point[]" signature="intersectionpoints(line,ellipse)"/></asyxml>*/
dot(intersectionpoints(l,el),red);
dot(intersectionpoints(ll,el),red);

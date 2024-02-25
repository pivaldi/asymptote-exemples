import geometry;
size(12cm);

// currentcoordsys=cartesiansystem((2,1),i=(1,0.5),j=(-0.25,0.75));
// currentcoordsys=cartesiansystem((2,1),i=rotate(45)*(1,0),j=rotate(45)*(0,1));
// show(currentcoordsys);

conic co[];
co[0]=circle((point)(0,0),1);
/*<asyxml><view file="modules/geometry.asy" type="void" signature="draw(picture,Label,explicit conic,align,pen,arrowbar,arrowbar,margin,Label,marker)"/></asyxml>*/
draw(co[0]);

co[1]=ellipse((point)(0,0),4,1);
draw(co[1]);

co[2]=parabola((0,0),1,90);
draw(co[2]);

hyperbola h=hyperbola((-1,0),(1,0),1.2,byvertices);
co[3]=h;
draw(co[3]);
draw(h.A1,grey);
draw(h.A2,grey);

dotfactor *= 1;

for (int i=0; i < 4; ++i) {
  dot(intersectionpoints(h.A1,co[i]),blue);
  dot(intersectionpoints(h.A2,co[i]),blue);
  for (int j=i+1; j < 4; ++j)
    /*<asyxml><view file="modules/geometry.asy" type="point[]" signature="intersectionpoints(conic,conic)"/></asyxml>*/
    dot(intersectionpoints(co[i],co[j]), red);
}

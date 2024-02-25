import trembling;
size(12cm);

startTrembling();

conic co[];
co[0]=circle((0,0),1);
draw(co[0]);

co[1]=ellipse((0,0),4,1);
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
    dot(intersectionpoints(co[i],co[j]), red);
}

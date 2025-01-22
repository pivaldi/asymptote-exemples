import geometry; size(15cm);

inversion inv=inversion(1,(-3.6,0));
path g1=inv*line((-1,0),(-1,1)),
g2=inv*line((1,0),(1,1));
fill(g1,0.91*yellow); draw(g1,linewidth(bp));
unfill(g2); //draw(g2,linewidth(bp));

int n=40;
for (int i=-n; i <= n; ++i) {
  path g=inv*circle((point) (0,2*i),1);
  fill(g,(1-abs(i)/n)*orange);
  // draw(g,bp+0.8*orange); //draw(g,black);
}
shipout(bbox(5mm,Fill(rgb(0.95,0.95,0.7))));

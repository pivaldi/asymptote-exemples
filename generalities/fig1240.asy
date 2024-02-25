size(8cm);
draw(unitcircle, linewidth(bp));
pen p;
for (int t=-88; t <= 88; t += 2) {
  if(t%5 == 0) {
    p=linewidth(bp);
    draw((0,1){dir (t-90)}..{dir (270-t)}(0,-1), linewidth(bp));
  } else p=currentpen;
  draw((Cos(t),Sin(t)){dir(180+t)}..{dir(180-t)}(-Cos(t),Sin(t)), p);
}

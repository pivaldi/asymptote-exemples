DefaultHead=HookHead;

path line=(0,0)..(2.5cm,2.5cm)..(5cm,0);
draw(line,ArcArrow());
draw(shift(0,-2cm)*line,BeginArcArrow());
draw(shift(0,-4cm)*line,MidArcArrow());
draw(shift(0,-6cm)*line,ArcArrows());

draw(shift(6cm,0)*line,3bp+.8red,ArcArrow(20bp));
draw(shift(6cm,-2cm)*line,3bp+.8red,BeginArcArrow(20bp));
draw(shift(6cm,-4cm)*line,3bp+.8red,MidArcArrow(20bp));
draw(shift(6cm,-6cm)*line,3bp+.8red,ArcArrows(20bp));

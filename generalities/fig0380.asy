DefaultHead=TeXHead;

path line=(0,0)..(2.5cm,2.5cm)..(5cm,0);
draw(line,Arrow());
draw(shift(0,-2cm)*line,BeginArrow());
draw(shift(0,-4cm)*line,MidArrow());
draw(shift(0,-6cm)*line,Arrows());

draw(shift(6cm,0)*line,3bp+.8red,Arrow(5bp));
draw(shift(6cm,-2cm)*line,3bp+.8red,BeginArrow(5bp));
draw(shift(6cm,-4cm)*line,3bp+.8red,MidArrow(5bp));
draw(shift(6cm,-6cm)*line,3bp+.8red,Arrows(5bp));

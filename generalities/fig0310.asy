path line=(0,0)--(5cm,0);
draw(line,Arrow);
draw(shift(0,-cm)*line, BeginArrow);
draw(shift(0,-2cm)*line, MidArrow);
draw(shift(0,-3cm)*line, Arrows);

draw(shift(0,-4cm)*line, linewidth(3bp), Arrow(20bp));
draw(shift(0,-5cm)*line, linewidth(3bp), BeginArrow(20bp));
draw(shift(0,-6cm)*line, linewidth(3bp), MidArrow(20bp));
draw(shift(0,-7cm)*line, linewidth(3bp), Arrows(20bp));

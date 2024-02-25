path line=(0,0)--(5cm,0);
DefaultHead=HookHead;
draw(shift(6cm,0)*line,Arrow());
draw(shift(6cm,-cm)*line, BeginArrow());
draw(shift(6cm,-2cm)*line, MidArrow());
draw(shift(6cm,-3cm)*line, Arrows());

draw(shift(6cm,-4cm)*line, linewidth(3bp), Arrow(20bp));
draw(shift(6cm,-5cm)*line, linewidth(3bp), BeginArrow(20bp));
draw(shift(6cm,-6cm)*line, linewidth(3bp), MidArrow(20bp));
draw(shift(6cm,-7cm)*line, linewidth(3bp), Arrows(20bp));

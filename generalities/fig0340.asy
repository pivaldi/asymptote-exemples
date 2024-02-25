path line=(0,0)--(5cm,0);
DefaultHead=TeXHead;
draw(shift(6cm,0)*line,Arrow());
draw(shift(6cm,-cm)*line, BeginArrow());
draw(shift(6cm,-2cm)*line, MidArrow());
draw(shift(6cm,-3cm)*line, Arrows());

draw(shift(6cm,-4cm)*line, linewidth(bp), Arrow());
draw(shift(6cm,-5cm)*line, linewidth(2bp), BeginArrow(5bp));
draw(shift(6cm,-6cm)*line, linewidth(2bp), MidArrow(5bp));
draw(shift(6cm,-7cm)*line, linewidth(2bp), Arrows(5bp));

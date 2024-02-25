DefaultHead=HookHead;
path line=(0,0)--(5cm,0);

draw(line,Arrow(20bp,filltype=NoFill));
draw(shift(0,-cm)*line,Arrow(20bp,filltype=FillDraw(.8red)));
draw(shift(0,-2cm)*line,Arrow(20bp,filltype=Fill(.8red)));
draw(shift(0,-3cm)*line,Arrows(filltype=FillDraw(-10,10,.8red)));

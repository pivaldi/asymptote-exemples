DefaultHead=TeXHead;
path line=(0,0)--(5cm,0);

draw(line,Arrow(10bp,filltype=NoFill));
draw(shift(0,-2cm)*line,Arrow(10bp,filltype=FillDraw(.8red)));
draw(shift(0,-4cm)*line,Arrow(10bp,filltype=Fill(.8red)));
draw(shift(0,-6cm)*line,Arrows(filltype=FillDraw(-10,10,.8red)));

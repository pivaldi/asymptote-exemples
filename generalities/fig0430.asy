size(5cm,0);
path line=(0,0)--(5,0);

draw(line,Arrow(20bp,position=.75));
draw(shift(0,-2)*line,Arrow(20bp,40,.75,filltype=NoFill));

position pos=BeginPoint;
pos.position=.75;
draw(shift(0,-4)*line,BeginArrow(20bp,pos));
draw(shift(0,-6)*line,BeginArrow(20bp,40,pos,filltype=NoFill));

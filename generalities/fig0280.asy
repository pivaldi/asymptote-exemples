unitsize(cm);
path line=(0,0)--(6,0);

draw(line,solid);
draw(shift(0,-1)*line,dotted);
draw(shift(0,-2)*line,dashed);
draw(shift(0,-3)*line,longdashed);
draw(shift(0,-4)*line,dashdotted);
draw(shift(0,-5)*line,longdashdotted);

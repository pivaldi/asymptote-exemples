import trembling;
startTrembling(angle=6, frequency=1, random=10);

size(8cm);

triangle T=triangleabc(6,6,6);

draw(T, dot);
draw(bisector(T.AB)^^bisector(T.AC)^^bisector(T.BC), 0.8*red);

addMargins(1cm,1cm);

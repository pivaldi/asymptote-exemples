import trembling;
startTrembling(magnetizePoints=false);

size(8cm);

triangle T=triangleabc(6,7,8);
draw(T,dot);
draw(circle(T));
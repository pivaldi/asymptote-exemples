import trembling;
startTrembling(angle=6, random=10);

size(8cm);

triangle T=triangleabc(6,7,8);
dot(intouch(T));

draw(T);
draw(incircle(T), 0.8*red);

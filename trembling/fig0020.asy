import trembling;
size(8cm);

startTrembling();

draw(unitcircle);
draw((-1,-0.5)--(1,-0.5)--(0,0.75)--cycle);

shipout(bbox(3mm,invisible));

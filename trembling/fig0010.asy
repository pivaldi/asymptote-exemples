import trembling;
size(8cm);

path cle=unitcircle;

path tcle=tremble(cle,frequency=0.25,random=1);
draw(tcle);

path tri=(-1,-0.5)--(1,-0.5)--(0,0.75)--cycle;
path ttri=tremble(tri,frequency=0.5,random=1.5);
draw(ttri);

shipout(bbox(3mm,invisible));

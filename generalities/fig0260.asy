size(8cm,0);

path p1=(0,0)--(1,1);
path p2=(2,0)--(3,1);

draw(p1,linewidth(5mm));
draw(p2,linewidth(5mm));
draw(p1--p2, 3mm+.8blue);
draw(reverse(p1)--p2, 1mm+.8red);

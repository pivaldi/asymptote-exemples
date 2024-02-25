size(3cm,0);

transform t=xscale(1.25);
pen p1=red, p2=yellow;
pair pa=t*dir(135), pb=t*dir(-45);

axialshade(t*unitcircle,p1,pa,p2,pb);
draw(pa--pb, dashed);

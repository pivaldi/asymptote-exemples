size(8cm,0);

path a,b,c,d;
a = (-1,-.2){up} .. tension 1.2 .. (1,-.2){down};
transform r90=rotate(90);
b = r90*a;
c = r90*b;
d = r90*c;
path bound=buildcycle(a,b,c,d);
fill(bound, lightgrey);
draw(a^^b^^c^^d,grey);
draw(bound);

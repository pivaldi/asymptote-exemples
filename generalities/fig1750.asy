size(6cm,0);

path p = (0,0){up} .. (2cm,0){up};
path q = (0,1cm){dir(-60)}..(1cm,-1cm)..{dir(60)}(2cm,1cm);

draw(p, red);
draw(q, blue);
dot(intersectionpoint(p,q));
draw(point(p, intersect(p,q)[0])--postcontrol(p, intersect(p,q)[0]), .8red,Arrow);
draw(point(q, intersect(p,q)[1])--postcontrol(q, intersect(p,q)[1]), .8blue,Arrow);

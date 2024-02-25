size(6cm,0);
defaultpen(2mm+linecap(0));

path p = (0,0){up} .. (2cm,0){up};
path q = (0,1cm){dir(-60)}..(1cm,-1cm)..{dir(60)}(2cm,1cm);


draw(firstcut(p,q).before, .8red);
draw(firstcut(p,q).after, .8blue);

draw(lastcut(q,p).before, .8green);
draw(lastcut(q,p).after, .8yellow);


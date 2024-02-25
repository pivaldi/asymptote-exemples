size(6cm,0);

path p = (0,0){up} .. (2cm,0){up};
path q = (0,1cm){dir(-60)}..(1cm,-1cm)..{dir(60)}(2cm,1cm);

draw(p^^q);
dot(intersectionpoint(p,q) , red);
dot(intersectionpoint(p,reverse(q)) , blue);

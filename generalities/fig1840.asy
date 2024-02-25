size(6cm,0);

defaultpen(2mm+linecap(0));

path p = (0,0){up} .. (2cm,0){up};
path q = (0,1cm){dir(-60)}..(1cm,-1cm)..{dir(60)}(2cm,1cm);

real[] ipq=intersect(p,q);
real[] iprq=intersect(p,reverse(q));

draw(subpath(p, 0, ipq[0]), .8red);
draw(subpath(p, ipq[0], iprq[0]), .5red);
draw(subpath(p, iprq[0], length(p)), .3red);

draw(subpath(reverse(q), 0, iprq[1]), .8green);
draw(subpath(reverse(q), iprq[1], length(q)-ipq[1]), .5green);
draw(subpath(reverse(q), length(q)-ipq[1], length(q)), .3green);

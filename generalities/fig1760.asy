import graph;
size(6cm,0);

path a = polargraph(new real(real t){return t;}, 0, 3pi, operator ..);
path b = polargraph(new real(real t){return 2t;}, 0, 3.75pi, operator ..);

real sharp=40;
path c=relpoint(a,1){relpoint(a,1)-postcontrol(a,length(a)-1)}..{dir(sharp)}relpoint(b,1);

fill(a..c..reverse(b)&cycle,0.8*red);
shipout(bbox(2mm, Fill(0.15*blue)));

import graph;

unitsize(x=1cm);
real f(real x){return x;}
xlimits( -3, 3);
ylimits( -3, 3);
draw(graph(f,-3,3));
xaxis(Label("$x$",position=EndPoint, align=SE),Ticks("%",extend=true), Arrow);
yaxis(Label("$y$",position=EndPoint, align=NW),Ticks("%",extend=true), Arrow);

labelx(1,2S);
labely(1,2W);
labelx("$O$",0,SE);
dot((0,0));

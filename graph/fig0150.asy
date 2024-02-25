import graph;  
unitsize(1cm);

xlimits( -3, 2);  
ylimits( -3, 3);  
xaxis("$x$",Ticks("%",begin=false, end=false),arrow=Arrow);
yaxis("$y$",Ticks("%",begin=false, end=false),arrow=Arrow);

labelx(1,2S);
labely(1,2W);
labelx("$O$",0,SW);
dot((0,0));

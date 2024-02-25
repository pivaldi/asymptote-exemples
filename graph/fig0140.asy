unitsize(x=1cm);
import graph;

xlimits( -3, 2);
ylimits( -3, 3);
xaxis(xmin=-3, xmax=2,Ticks("%"));
yaxis(ymin=-3, ymax=3, Ticks("%"));

labelx(1,2S);
labely(1,2W);
labelx("$O$",0,SW);
dot((0,0));
draw(Label("$x$",position=Relative(1),align=2S),(currentpicture.userMin().x-1,0)--(currentpicture.userMax().x+1,0),Arrow);
draw(Label("$y$",position=Relative(1),align=2W),(0,currentpicture.userMin().y-1)--(0,currentpicture.userMax().y+1),Arrow);

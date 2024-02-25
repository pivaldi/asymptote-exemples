size(8cm,0);
import graph;  
texpreamble("\usepackage[frenchb]{babel}");

xlimits( -3pi, 3pi);  
xaxis(BottomTop(), Ticks(Label("$\nombre{%.2f}$",red), Step=2pi, step=pi/5, pTick=.8red));

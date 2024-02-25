size(8cm,0);
import graph;

xlimits( -3pi, 3pi);
ylimits( -5, 5);
yaxis( "y" , LeftRight(), RightTicks(pTick=.8red, ptick=lightgrey, extend=true));
xaxis( "x-value", BottomTop(), Ticks(Label("$%.2f$",red), Step=2pi, step=pi/5, pTick=.8red, ptick=lightgrey, extend=true));

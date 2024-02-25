size(8cm,0);

transform T=shift(0,-0.125);
path g=(0,0)--(1,0);
int i=-1;
draw(T^(++i)*g, Arrows());
draw(T^(++i)*g, 0.8*green, Arrows(SimpleHead));
draw(T^(++i)*g, 0.8*red, Arrows(SimpleHead,size=5mm));

draw(T^(++i)*g, Arrows(HookHead));
draw(T^(++i)*g, 0.8*green, Arrows(HookHead,size=5mm));
draw(T^(++i)*g, 0.8*red, Arrows(HookHead(barb=20),size=5mm));
draw(T^(++i)*g, 2mm+0.8*blue, Arrows(HookHead(dir=60),size=5mm, Fill));

draw(T^(++i)*g, 0.8*yellow, Arrows(HookHead(barb=-10,dir=40),size=5mm));

draw(T^(++i)*g, Arrows(TeXHead));
draw(T^(++i)*g, 0.8*green, Arrows(TeXHead,size=5bp));
draw(T^(++i)*g, 5bp+0.8*red, Arrows(TeXHead));

size(5cm,0);
path line=(0,0)--(5,0);
transform T=shift(0,-1);

draw(line, Bar);
draw(T*line, BeginBar);
draw(T^2*line, Bars);
draw(T^3*line, Arrow, BeginBar);


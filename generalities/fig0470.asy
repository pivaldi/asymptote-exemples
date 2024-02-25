path line=(0,0)--(5cm,0);
transform T=shift(0,-cm);

draw(line,linewidth(1mm),Bars);
draw(T^2*line,Bars(5mm));
draw(T^3*line,linewidth(1mm),Bars(5mm));
draw(T^4*line,dotted+red,Bars);

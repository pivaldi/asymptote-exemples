size(0,0);
path line=(0,0)--(6cm,0);
transform T=shift(0,-cm);

draw("$A$",line);
draw("$B$",T*line,dir(0));
draw("$C$",T^2*line,N);
draw(Label("$D$",fontsize(14pt)),T^3*line);

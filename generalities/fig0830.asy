size(0,0);
path line=(0,0)--(3cm,0);
transform T=shift(0,-cm);

draw(Label("A",align=Center,filltype=UnFill), line);
draw(Label("B",UnFill), T*line, Center);
draw(Label("C",align=Center,position=Relative(.75),UnFill), T^2*line);
draw(Label("D",position=Relative(.25),UnFill), align=Center, T^3*line);

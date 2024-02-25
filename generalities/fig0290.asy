unitsize(1cm);
path line=(0,0)--(6,0);
pen my_pen=linetype("24 8 8 8");

draw(line,linetype("24 8 8 8"));
draw(shift(0,-1)*line,my_pen+.8red);
draw(shift(0,-2)*line,my_pen+.7green+4bp);
draw(shift(0,-3)*line,linetype("24 8 8 8",false)+.7blue+4bp);
draw(shift(0,-4)*line,linetype("24 8 8 8",true,false)+4bp);
draw(shift(0,-5)*line,linetype("24 8 8 8",false,false)+.5red+blue+4bp);

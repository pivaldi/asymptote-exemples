settings.render=0;
import three;
size(4cm,0);

currentprojection=perspective((45,45,30));
path3 YZ=plane((0,4,0),(0,0,4));

draw("$x$",project(O--X),Arrow);
draw("$y$",project(O--Y),Arrow);
draw("$z$",project(O--Z),Arrow);
draw(YZ);

label(scale(5)*project("A",Y,Z,(0,1,1)));

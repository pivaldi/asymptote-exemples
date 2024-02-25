import tube;
import graph3;
size(12cm,0);

currentprojection=perspective(1,-1,0);


path3 p=scale3(20)*randompath3(20,false,operator--)--cycle;

path section=scale(1,0.25)*polygon(4);
draw(tube(roundedpath(p,0.05),section, corner=10), purple);

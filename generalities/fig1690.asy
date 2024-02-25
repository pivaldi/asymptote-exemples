import labelpath;

unitsize(5cm);
string text="\Huge A text along a curve";
path p=(0,0)..(1,1)..(2,0.5){dir(0)};

labelpath(text,p);
draw(p, lightgrey);

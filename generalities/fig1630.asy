size(6cm,0);

path apath=(0,0)..(1,1)..(2,-1){dir(-90)};

draw(apath);

dot(apath);
dot(point(apath,length(apath)),.8green+8pt);
draw(point(apath,0)--point(apath,1)--point(apath,2),.8red);
draw(point(apath,0.5)--point(apath,1.5)--point(apath,2.5),.8blue);

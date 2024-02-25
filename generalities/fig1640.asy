size(6cm,0);

path apath=(0,0)..(1,1)..(2,.5){dir(0)};

draw(subpath(apath,0,length(apath)/2),1pt+.8red,EndPenMargin);
draw(subpath(apath,length(apath)/2,length(apath)),1pt+.8blue,BeginPenMargin);

size(6cm,0);

path pth1=(0,-0.5)--(2,1);
path pth2=(0,0.5)--(2,-1);

draw(pth1^^pth2);

dot(intersectionpoint(pth1,pth2),red);

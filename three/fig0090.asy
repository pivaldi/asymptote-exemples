size(10cm,0);
import three;

currentprojection=obliqueX;

triple v1=(4,0,0),
       v2=(0,6,0),
       p0=(-2,-3,0);
path3 pl1=plane(v1,v2,p0);

path ph=transform(v1,v2,p0,currentprojection)*((0,-2){W}..(0,2){W}..cycle);
filldraw(project(pl1)^^ph,evenodd+lightgrey);

size(10cm,0);

path apath=(0,0)..(1,1)..(2,.5){dir(0)};
real l=length(apath);
real step=l/15;

for(real i=0; i<l-step; i+=step)
  draw(subpath(apath,i,i+step),4bp+(i/l*red+(l-i)/l*blue),PenMargins);
draw(apath);

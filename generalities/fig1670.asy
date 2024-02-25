size(10cm,0);

path apath=(0,0)..(1,1)..(2,.5){dir(0)};
real l=arclength(apath);
real step=l/15;

path arcpath(path apath, real t1, real t2)
{
  return subpath(apath, arctime(apath,t1), arctime(apath,t2));
}

for(real i=0; i<l-step; i+=step)
  draw(arcpath(apath,i,i+step),4bp+(i/l*red+(l-i)/l*blue),PenMargins);
draw(apath);

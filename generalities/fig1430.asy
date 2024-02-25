size(10cm,0);

path curv=reverse((0,2){dir(10)}..(1,0)..{dir(-50)}(3,2));
guide dirc;

draw(curv,linewidth(1mm)+grey);

for(real i=0; i<=length(curv); i+=.005)
  {
    draw(point(curv,i)--dir(curv,i)+point(curv,i),grey+yellow);
    dirc=dirc..dir(curv,i)+point(curv,i);
  }

draw(dirc,grey);

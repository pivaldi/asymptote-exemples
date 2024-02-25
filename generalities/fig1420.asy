size(6cm,0);

path curv=reverse((0,2){dir(-60)}..(1,0)..{dir(60)}(2,2));

draw(curv);

for(real i=0; i<=length(curv); i+=.1)
  draw(point(curv,i)--dir(curv,i)+point(curv,i),grey);

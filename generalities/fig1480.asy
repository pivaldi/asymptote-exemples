size(0,0);

path p= (5mm,-5mm){right} .. (4cm,0);

for(int i=10; i<360; i+=10)
  draw(rotate(i)*p);

draw(p,red+1mm);

size(4cm,0);

path p= (1,-1){right} .. (4,0);
pair O=(3,.25);

for(int i=10; i<360; i+=10)
  draw(rotate(i,O)*p);

dot(O,blue);
draw(p,red+1mm);

size(0,0);

path cle=scale(4cm)*unitcircle;

draw(cle);

for(real i=0; i<=length(cle); i+=.2)
  {
    dot(point(cle,i));
    draw((0,0)--point(cle,i),dotted);
  }

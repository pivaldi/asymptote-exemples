size(0,0);

path cle=scale(4cm)*reverse(unitcircle);

draw(cle);

for(real i=0; i<=length(cle); i+=.2)
  draw(point(cle,i)--2cm*dir(cle,i)+point(cle,i),Arrow,p=i/length(cle)*red);

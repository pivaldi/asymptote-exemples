size(6cm,0);
path line1=(0,0)--(1,0);
path line2=(0,0)--(1,1);
pair bissec=dir(line1,line2);

draw(line1); draw(line2);
dot(bissec,linewidth(3bp));
draw(-.5bissec--bissec,dotted);
dot("$A$",(0,0),-bissec);

size(8cm,0);

transform scale(pair center, real k)
{
  return shift(center)*scale(k)*shift(-center);
}

path cle=unitcircle;
pair A=(4,0);
draw(cle);

draw(scale(A,.5)*cle,red);
draw(scale(A,-.75)*cle,blue);

for (real t; t<length(cle); t+=1)
  draw(point(cle,t)--point(scale(A,-.75)*cle,t),dotted);

dot("$A$",A,N);

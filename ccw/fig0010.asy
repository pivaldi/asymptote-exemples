size(8cm, false);

real signedArea(pair [] pt)
{
  // Return the signed area of a simple (NON CROSSED) polygon of vertex "pt"
  // Retourne l'aire algébrique d'un polygone NON CROIÉ
  pair [] pt_= copy(pt);
  real n=pt.length,
    sa=0;
  pt_.push(pt_[0]);
  pt_.push(pt_[1]);

  for (int i=1; i<=n; ++i) sa +=pt_[i].x * (pt_[i+1].y - pt_[i-1].y);
  return sa/2;
}

bool counterclockwise(pair [] pt)
{
  // Return "true" if the polygon (SIMPLE CURVE i.e. NON CROSSED)
  // of vertex "pt" is counterclockwise
  // Retourne "true" si le polygone (NON CROISÉ) de sommets "pt"
  // est dans le sens des aiguilles d'une montre
  return (signedArea(pt) > 0);
}

pair [] reverse(pair [] pt)
{
  pair [] pt_=copy(pt);
  int begin=0, end=pt.length-1;
  while (begin<end)
    {
      pair temp=pt_[begin];
      pt_[begin]=pt_[end];
      pt_[end]=temp;
      ++begin; --end;
    }
  return pt_;
}

pair [] counterclockdirected(pair [] pt)
{
  if (counterclockwise(pt)) return pt; else return reverse(pt);
}

path polygon(pair [] pt)
{
  int l=pt.length;
  guide opath;
  for (int i=0; i<l; ++i)
    {
      opath = opath--pt[i];
    }
  return opath;
}

pair [] pg = {(0,0), (1,0), (1,1), (2,2), (-1,1)};
draw(polygon(pg)--cycle,
     Arrow(Relative(.1)), BeginBar);
draw(polygon(counterclockdirected(reverse(pg)))--cycle,
     Arrow(position=Relative(.2), FillDraw(red)), BeginBar);

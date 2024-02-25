size(8cm,0);

pair[] self_intersection(path p, int n=100)
{
  pair[] rpair=new pair[];
  path tpath;
  real [] tpoint;
  real l=length(p);
  int i=1;
  for (real t1=0; t1<l ; t1+=l/n)
    {
      for (real t2=t1+2*l/n; t2<l; t2+=l/n)
        {
          tpoint=intersect(subpath(p,t1,t1+l/n),
                           subpath(p,t2,t2+l/n));
          if (tpoint.length == 2)
            {
              rpair[i]=point(subpath(p,t1,t1+l/n),tpoint[0]);
              ++i;
            }
        }
    }
  return rpair;
}

void dott(pair[] pt, pen p)
{
  for (int i=1 ; i<pt.length; ++i)
    {
      dot(pt[i], p);
    }
}

srand(rand());
path p = randompath(15);

pair[] inter=self_intersection(p);
dott(inter, .8red);
draw(p);


size(15cm,0);

srand(rand());
path p1 = randompath(9);
path p2 = randompath(8);
real Minx=min(min(p1).x,min(p2).x);
real Maxx=max(max(p1).x,max(p2).x);
real Miny=min(min(p1).y,min(p2).y);

pair[] inter=intersectionpoints(p1,p2);
int nb=inter.length;
for (int i=0 ; i<nb; ++i)
  {
    dot(inter[i]);
    label("$" + (string) i +"$", inter[i],N);
  }

draw(p1,.8red);
draw(p2,.8green);
label("I found " + (string) nb + " points of intersection.",((Maxx+Minx)/2,Miny),2S);

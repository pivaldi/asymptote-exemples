size(10cm);
path g=box((-1,-1),(1,1));
pen [] col= new pen[]{gray,yellow};

path pairToSquare(pair pt){ return pt -- I*pt -- -pt -- -I*pt --cycle; }

int nb=10;
for (int i=0; i<nb; ++i)
  {
    filldraw(g,col[i%2]);
    g=pairToSquare(relpoint(g,1/16));
  }

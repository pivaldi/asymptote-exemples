import three;

size(10cm);
currentlight=(0,0,1);

surface sf=surface(patch(P=new triple[][] {
      {(0,0,0),(1,0,0),(1,0,0),(2,0,0)},
      {(0,1,0),(1,0,1),(1,0,1),(2,1,0)},
      {(0,1,0),(1,0,-1),(1,0,-1),(2,1,0)},
      {(0,2,0),(1,2,0),(1,2,0),(2,2,0)}
    }));

draw(sf,surfacepen=yellow);
draw(sf.s[0].vequals(0.5),squarecap+2bp+blue,currentlight);
draw(sf.s[0].uequals(0.5),squarecap+2bp+red,currentlight);

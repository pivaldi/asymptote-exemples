size(6cm,0);

real a=360/6;
for (int i = -1; i < 5; ++i)
  fill(arc((0,0),1,i*a,(i+1)*a)--cycle,grey);

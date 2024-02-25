size(4cm,0);

real a=360/6;
for (int i = -1; i < 5; ++i)
  draw(Label(format("%i",i+1)),arc((0,0),10,i*a,(i+1)*a)--cycle,grey);

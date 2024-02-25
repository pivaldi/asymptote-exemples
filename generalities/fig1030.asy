size(4cm,0);

real n=7, a=360/n;
for (int i = 0; i < n; ++i)
  filldraw((0,0)--arc((0,0),1,i*a,(i+1)*a)--cycle, i/n*blue + (1-i/n)*green + grey);

unitsize(3cm);

pair A=(0,0), B=(1,0), C=(0,1);
path trig;
trig=A--B--C--cycle;
draw(trig);
dot(trig,linewidth(4bp));
dot(shift(3,0)*trig,red+4bp);

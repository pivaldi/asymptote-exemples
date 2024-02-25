include fig0130;

point w=l.A+1.5*l.v;
draw(Label("$w$",EndPoint),l.A--w,Arrow);

point wp=lp.A+1.5*lp.v;
draw(Label("$w'$",EndPoint),lp.A--wp,Arrow);

point ws=ls.A+1.5*ls.v;
draw(Label("$w''$",EndPoint),ls.A--ws,Arrow);

int n=64;
real step=2pi/n;

for (int i=0; i<n; ++i) {
  point p=B+point(R,R.polar(1,step*i));
  dot(p,sameside(p,w,l) ? black : blue);
  
  point p=Ap+point(Rp,Rp.polar(1,step*i));
  dot(p,sameside(p,wp,lp) ? black : blue);

  point p=As+point(Rs,Rs.polar(1,step*i));
  dot(p,sameside(p,ws,ls) ? black : blue);
}

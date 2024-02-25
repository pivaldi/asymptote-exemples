size(4cm,0);

pair A=0, B=(1,0), C=(.7,1);

void fillangle(picture pic=currentpicture,
	       pair O=0, pair A, pair B,
	       real radius=10,
	       pen p=grey)
{
  picture tpic;
  int n=sgn(radius);
  real a1=degrees(shift(-O)*A,false);
  real a2=degrees(shift(-O)*B,false);
  fill(tpic,(0,0)--arc((0,0), -radius, max(a1,a2), min(a1,a2),true)--cycle, p=p);
  add(pic,tpic,O);
}

draw(A--B--C--cycle);

real r1=15, r2=20;
fillangle(A,B,C,r1,.8red);
fillangle(A,B,C,-r2);
fillangle(B,A,C,r1,.8red);
fillangle(B,A,C,-r2);
fillangle(C,B,A,r1,.8red);
fillangle(C,B,A,-r2);

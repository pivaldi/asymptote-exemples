import solids;

size(10cm, 0);
currentprojection=orthographic(-50, 100, 40);

//Draw right angle (MA, MB) in 3D
void drawrightangle(picture pic=currentpicture,
                    triple M, triple A, triple B,
                    real radius=0,
                    pen p=currentpen,
                    pen fillpen=nullpen,
                    projection P=currentprojection)
{
  p=linejoin(0)+linecap(0)+p;
  if (radius==0) radius=arrowfactor*sqrt(2);
  transform3 T=shift(-M);
  triple OA=radius/sqrt(2)*unit(T*A),
    OB=radius/sqrt(2)*unit(T*B),
    OC=OA+OB;
  path3 _p=OA--OC--OB;
  picture pic_;
    draw(pic_, _p, p=p);
    if (fillpen!=nullpen) draw(pic_, surface(O--_p--cycle), fillpen);
  add(pic, pic_, M);
}

// *...............Construction starts here................*

real r=1, h=.75;
real gle=60;
real gleA=20;
transform3 tR=rotate(gle, Z);
transform3 tT=shift((0, 0, -h));

triple H=(0, 0, h),//the label is O in the picture.
  A=rotate(gleA, Z)*(0, r, h),
  F=tR*A,
  B=tR*F,
  D=tT*A,
  C=tT*B,
  Ei=intersectionpoint(H--F, A--B);

revolution r=cylinder(O, r, h, Z);
// draw(surface(r));
draw(r);

draw(O--H, dashed);
draw(O--D--C--cycle^^O--H^^B--C, dashed);

drawrightangle(Ei, H, B, fillpen=black);

dot(Label("$O'$", align=invert(NE+E, O)), O);
// layer();
draw(surface(A--B--C--D--cycle), lightgrey+opacity(.5));

dot(Label("$A$", align=NW), A);
dot(Label("$B$", align=N), B);
dot(Label("$C$", align=S), C);
dot(Label("$D$", align=NW), D);
dot(Label("$E$", align=S), Ei);
dot(Label("$F$", align=S), F);
dot(Label("$O$", align=N), H);

draw(H--B--F--A--cycle^^H--F^^A--B^^A--D);

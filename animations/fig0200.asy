settings.render=0;
import three;
import animation;
animation A;

size(15cm);
currentprojection=orthographic(1,1,1.5);
currentlight=(1,0,1);

triple PXY=-X-Y;
triple P00=PXY+0.5*Z, P03=-X+Y, P33=X+Y, P30=X-Y;

triple[][] P0={
  {PXY,PXY+(0,0.5,0),P03+(0,-0.5,0),P03},
  {PXY+(0.5,0,0),(-0.5,-0.5,0),(-0.5,0.5,0),P03+(0.5,0,0)},
  {P30+(-0.5,0,0),(0.5,-0.5,0),(0.5,0.5,0),P33+(-0.5,0,0)},
  {P30,P30+(0,0.5,0),P33+(0,-0.5,0),P33}
};

triple[][][] P1={
  {
    {PXY,PXY+(0,0.5,0),P03+(0,-0.5,0),P03},
    {PXY+(0.5,0,0),(-0.5,-0.5,-2),(-0.5,0.5,-2),P03+(0.5,0,0)},
    {P30+(-0.5,0,0),(0.5,-0.5,-2),(0.5,0.5,-2),P33+(-0.5,0,0)},
    {P30,P30+(0,0.5,0),P33+(0,-0.5,0),P33}
  },
  {
    {P00,P00+(-0.5,0.5,-1),P03+(0,-0.5,1),P03},
    {P00+(0.5,-0.5,-1),(-0.5,-0.5,-2),(-0.5,0.5,-2),P03+(0.5,0,1)},
    {P30+(-0.5,0,1),(0.5,-0.5,-2),(0.5,0.5,-2),P33+(-0.5,0,1)},
    {P30,P30+(0,0.5,1),P33+(0,-0.5,1),P33}
  },
  {
    {P00,P00+(-0.5,0.5,-1),P03+(0,-0.5,1),P03},
    {P00+(0.5,-0.5,-1),(-0.5,-0.5,-2),(-0.5,0.5,2),P03+(0.5,0,1)},
    {P30+(-0.5,0,1),(0.5,-0.5,-2),(0.5,0.5,-2),P33+(-0.5,0,1)},
    {P30,P30+(0,0.5,1),P33+(0,-0.5,1),P33}
  },
  {
    {P00,P00+(-0.5,0.5,-1),P03+(0,-0.5,1),P03},
    {P00+(0.5,-0.5,-1),(-0.5,-0.5,-2),(-0.5,-0.5,2),P03+(0.5,0,1)},
    {P30+(-0.5,0,1),(0.5,-0.5,-2),(0.5,0.5,-2),P33+(-0.5,0,1)},
    {P30,P30+(0,0.5,1),P33+(0,-0.5,1),P33}
  }
};

triple[][] interp(triple[][] a, triple[][] b, real x)
{
  triple[][] c;
  for (int i=0; i < a.length; ++i) {
    triple [] t;
    for (int j=0; j < a[i].length; ++j) {
      t.push(interp(a[i][j],b[i][j],x));
    }
    c.push(t);
  }
  return c;
}

int n=20;
real step=1/n;

for (int i=0; i < P1.length; ++i) {
  for (int j=0; j <= n; ++j) {
    save();
    triple[][] P=interp(P0,P1[i],j*step);
    surface s=surface(patch(P));
    draw(s,15,15,yellow,meshpen=grey);
    draw(sequence(new path3(int i){
          return s.s[i].external();},s.s.length), bp+red);

    dot("P[0][0]",P[0][0], align=N, black);
    dot("P[0][3]",P[0][3], black);
    dot("P[3][3]",P[3][3], align=S, black);
    dot("P[3][0]",P[3][0], align=W, black);

    draw(Label("P[0][1]",align=SW,EndPoint),P[0][0]--P[0][1], Arrow3);
    draw(Label("P[1][0]",align=SE,EndPoint),P[0][0]--P[1][0], Arrow3);

    draw(Label("P[0][2]",align=E,EndPoint),P[0][3]--P[0][2], Arrow3);
    draw(Label("P[1][3]",align=W,EndPoint),P[0][3]--P[1][3], Arrow3);

    draw(Label("P[2][3]",align=NE,EndPoint),P[3][3]--P[2][3], Arrow3);
    draw(Label("P[3][2]",align=NW,EndPoint),P[3][3]--P[3][2], Arrow3);

    draw(Label("P[3][1]",align=NE,EndPoint),P[3][0]--P[3][1], Arrow3);
    draw(Label("P[2][0]", align=W,EndPoint),P[3][0]--P[2][0], Arrow3);


    dot("P[1][1]",P[1][1], align=N);
    dot("P[1][2]",P[1][2], align=E);
    dot("P[2][2]",P[2][2], align=N);
    dot("P[2][1]",P[2][1], align=W);

    A.add();
    restore();
  }
  P0=copy(P1[i]);
}

for (int i=A.pictures.length-1; i >= 0 ; --i)
  A.add(A.pictures[i]);

A.movie(BBox(Fill(lightgrey)));

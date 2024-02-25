import three;

size(12cm);
currentprojection=orthographic(1,1,1.5);
currentlight=(1,0,1);

triple P00=-X-Y+0.5*Z, P03=-X+Y, P33=X+Y, P30=X-Y;

triple[][] P={
  {P00,P00+(-0.5,0.5,-1),P03+(0,-0.5,1),P03},
  {P00+(0.5,-0.5,-1),(-0.5,-0.5,0.5),(-0.5,0.5,-1.5),P03+(0.5,0,1)},
  {P30+(-0.5,0,1),(0.5,-0.5,-1.5),(0.5,0.5,1),P33+(-0.5,0,1)},
  {P30,P30+(0,0.5,1),P33+(0,-0.5,1),P33}
};

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
draw(Label("P[1][3]",EndPoint),P[0][3]--P[1][3], Arrow3);

draw(Label("P[2][3]",EndPoint),P[3][3]--P[2][3], Arrow3);
draw(Label("P[3][2]",EndPoint),P[3][3]--P[3][2], Arrow3);

draw(Label("P[3][1]",EndPoint),P[3][0]--P[3][1], Arrow3);
draw(Label("P[2][0]", align=W,EndPoint),P[3][0]--P[2][0], Arrow3);


dot("P[1][1]",P[1][1], align=S);
dot("P[1][2]",P[1][2], align=E);
dot("P[2][2]",P[2][2], align=N);
dot("P[2][1]",P[2][1], align=W);

for (int i=0; i < s.s.length; ++i)
  dot(s.s[i].internal(), bp+red);

if(!is3D())
  shipout(bbox(Fill(lightgrey)));

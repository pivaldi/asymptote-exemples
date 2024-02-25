import bsp;

typedef path3[] shape;

shape operator *(transform3 T, shape p){
  shape os;
  for(path3 g:p) os.push(T*g);
  return os;
}


path3 path(triple[] T){
  path3 P;
  for(triple i:T) P=P--i;
  return P;
}

void addshapes(face[] F, shape[] shp, pen drawpen=currentpen, pen fillpen=white)
{
  for(int i=0; i < shp.length; ++i)
    for(int j=0; j < shp[i].length; ++j) {
      path3 g=shp[i][j];
      picture pic=F.push(g);
      if(fillpen != nullpen) filldraw(pic,project(g),fillpen, drawpen);
      else draw(pic,project(g),drawpen);
      // filldraw(pic,g,currentlight.intensity(F[F.length-1].point)*fillpen, drawpen);
    }
}

shape cylinder(real R=1, real H=1, int n=18){
  shape Cyl;
  triple[] CTop;
  triple[] CBot;
  for(int i=0; i <= n; ++i)
    CBot.push((R*cos(2pi*i/n), R*sin(2pi*i/n),0));
  CTop = CBot+(0,0,H);
  for(int i=0; i < n; ++i)
    Cyl.push(CBot[i]--CBot[i+1]--CTop[i+1]--CTop[i]--cycle);

  path3 P=path(CBot)--cycle;
  Cyl.push(P);
  Cyl.push(shift(H*Z)*P);

  return Cyl;
}


size(10cm,0);

currentprojection=orthographic(1,1,1);

shape cyl1 = cylinder(R=1, H=2);

shape[] group={cyl1};

face[] hidden, visible;
addshapes(hidden, group, drawpen=linewidth(bp));
addshapes(visible, group, drawpen=dotted, fillpen=nullpen);
add(hidden);
add(visible);

shipout(format="pdf");

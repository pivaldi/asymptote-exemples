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
      filldraw(pic,project(g),fillpen, drawpen);
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

shape rightslab(real x=1, real y=1, real z=1){
  shape slab;
  slab[0] = (0,0,0)--(1,0,0)--(1,1,0)--(0,1,0)--cycle;
  slab[1] = (0,0,0)--(1,0,0)--(1,0,1)--(0,0,1)--cycle;
  slab[2] = (1,0,0)--(1,1,0)--(1,1,1)--(1,0,1)--cycle;
  slab[3] = (1,1,0)--(0,1,0)--(0,1,1)--(1,1,1)--cycle;
  slab[4] = (0,1,0)--(0,0,0)--(0,0,1)--(0,1,1)--cycle;
  slab[5] = (0,0,1)--(1,0,1)--(1,1,1)--(0,1,1)--cycle;
  return scale(x,y,z)*slab;
}

size(10cm,0);
triple cam=(1600,200,150);
//currentprojection=orthographic(1600,800,400);
currentprojection=perspective(cam); //Far away!
currentlight=rotate(-45,Z)*(cam+(0,0,1000));

real Blen = 180;
real Bwdt = 30;
real Bhgt = 3;
real Clen = 130;
real Cwdt = 50;
real Chgt = 50;
real cylr = 7.5;
real cylh = 37.0 ;

shape slab1 = shift(-Bwdt/2*Y-Bhgt/2*Z+Clen/2*X)*rightslab(Blen,Bwdt,Bhgt);
shape slab2 = shift(-Cwdt/2*Y-Chgt/2*Z-Clen/2*X)*rightslab(Clen,Cwdt,Chgt);
shape cyl1 = shift((Blen+Clen/2-2*cylr)*X-(cylh/2)*Z)*cylinder(R=cylr, H=cylh);

shape[] group1={slab1};
shape[] group2={slab2};
shape[] group3={cyl1};

face[] faces;
addshapes(faces, group1, drawpen=linewidth(0.25bp), fillpen=opacity(0.35)+red);
addshapes(faces, group2, drawpen=linewidth(0.25bp), fillpen=opacity(0.5)+lightblue);
addshapes(faces, group3, drawpen=linewidth(0.25bp), fillpen=opacity(0.5)+lightyellow);
add(faces);

shipout(format="pdf", bbox(3mm,white));

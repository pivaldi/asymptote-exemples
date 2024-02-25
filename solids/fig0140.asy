size(10cm,0);
import bsp;

currentprojection=perspective(10,3,-2);
guide achteck=polygon(8);
real lge=length(point(achteck,1)-point(achteck,0));
int n=8;
face[] faces;
guide3[] sq;
guide3[] tr;
triple a,b,c,d;

a=(point(achteck,0).x,point(achteck,0).y,-lge/2);
b=(point(achteck,1).x,point(achteck,1).y,-lge/2);
c=(point(achteck,1).x,point(achteck,1).y,lge/2);
d=(point(achteck,0).x,point(achteck,0).y,lge/2);

sq[0]=a--b--c--d--cycle;
for(int i=1;i<n;i=i+1) sq[i]=rotate(45*i,Z)*sq[0];
for(int i=0;i<3;i=i+1) sq[n+i]=rotate(90,Y)*sq[i];
for(int i=4;i<7;i=i+1) sq[n-1+i]=rotate(90,Y)*sq[i];
for(int i=2;i<3;i=i+1) sq[12+i]=rotate(90,X)*sq[i];
sq[14]=rotate(90,X)*sq[2];
sq[15]=rotate(90,X)*sq[4];
sq[16]=rotate(90,X)*sq[6];
sq[17]=rotate(90,X)*sq[0];

tr[0]=point(sq[2],3)--point(sq[2],2)--point(sq[14],1)--cycle;
for(int i=1;i<4;i=i+1) tr[i]=rotate(90*i,Z)*tr[0];
tr[4]=reverse(point(sq[2],0)--point(sq[2],1)--point(sq[9],2)--cycle);
for(int i=5;i<8;i=i+1) tr[i]=rotate(90*(i-4),Z)*tr[4];

real hgtsq=3;
triple[][][] pyrsq=new triple[18][4][3];
path3[] pyrsqfc=new path3[4*18];
int nofface=0;
for(int i=0;i<18;i=i+1){
  triple cog=0.5(point(sq[i],0)+point(sq[i],2));
  triple sp=cog+
    hgtsq*unit(cross(point(sq[i],1)-point(sq[i],0),point(sq[i],3)-point(sq[i],0)));
  for(int j=0;j<3;j=j+1){
    pyrsq[i][j][0]=point(sq[i],j);
    pyrsq[i][j][1]=point(sq[i],j+1);
    pyrsq[i][j][2]=sp;
    pyrsqfc[nofface]=pyrsq[i][j][0]--pyrsq[i][j][1]--pyrsq[i][j][2]--cycle;
    nofface=nofface+1;
  }
  pyrsq[i][3][0]=point(sq[i],3);
  pyrsq[i][3][1]=point(sq[i],0);
  pyrsq[i][3][2]=sp;
  pyrsqfc[nofface]=pyrsq[i][3][0]--pyrsq[i][3][1]--pyrsq[i][3][2]--cycle;
  nofface=nofface+1;
 }

for(int i=0;i<18*4;i=i+1) faces.push(pyrsqfc[i]);
for(int i=0;i<18*4;i=i+1) filldraw(faces[i],project(pyrsqfc[i]),yellow,black+2.5bp);

path3[] pyrtrfc=new path3[3*8];
real hgttr=2;
int nuoftr=0;

for(int i=0;i<8;i=i+1){
  triple cog=(1/3)*(point(tr[i],0)+point(tr[i],1)+point(tr[i],2));
  triple sp=cog+hgttr*unit(cross(point(tr[i],1)-point(tr[i],0),point(tr[i],2)-point(tr[i],0)));
  pyrtrfc[nuoftr]=point(tr[i],0)--point(tr[i],1)--sp--cycle;
  pyrtrfc[nuoftr+1]=point(tr[i],1)--point(tr[i],2)--sp--cycle;
  pyrtrfc[nuoftr+2]=point(tr[i],2)--point(tr[i],0)--sp--cycle;
  nuoftr=nuoftr+3;
 }

for(int j=0;j<24;j=j+1) faces.push(pyrtrfc[j]);
for(int j=0;j<24;j=j+1) filldraw(faces[4*18+j],project(pyrtrfc[j]),orange+yellow,black+2bp);

add(faces);
shipout(defaultfilename,bbox(0.2cm,black,RadialShade(paleblue,darkblue)));

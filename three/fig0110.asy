import three;
size(10cm,0);
currentprojection=orthographic(1,1.5,1);

path3 xy=XY*unitsquare3, xz=ZX*unitsquare3, yz=YZ*unitsquare3;

draw(xy^^xz^^yz, grey);
path3 p3xy=path3(texpath("$\pi$")[0],XYplane);
p3xy=shift((0.5,0.5,0))*scale3(1/abs(min(p3xy)-max(p3xy)))*p3xy;

surface s=surface(p3xy,planar=true);
draw(s, surfacepen=blue, meshpen=orange+3pt);

transform3 Txz=planeproject(xz,(0,-1,1));
draw(Txz*s, red);

transform3 Tyz=planeproject(yz,(-1,0,1));
draw(Tyz*s, green);

path3 p3xz=Txz*p3xy;
path3 p3yz=Tyz*p3xy;

int lg=length(p3xy);
triple p;
for(int i=0;i<=lg;++i) {
  p=point(p3xy,i);
  draw(p--point(p3xz,i), yellow);
  draw(p--point(p3yz,i), orange);
}

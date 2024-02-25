size(10cm);
path cle=unitcircle;

path roll(picture pic=currentpicture, real x, int nb=50)
{
  real stp=x/(nb-1);
  return operator --(...
                     sequence(new guide(int t){
                         real tt=t*stp;
                         return shift(expi(tt))*((x-tt)*(-sin(tt),cos(tt)));
                       },nb));
}

real y=4*pi;
pair yM=(1,y), ym=(1,-y);

int nb=100;
real stp=2*y/nb;

path[] g;
for (int i=1; i <= nb; ++i) {
  real t=-y+i*stp;
  g.push(roll(-y+i*stp/2,50+round(20*i*stp))--reverse(roll(y-i*stp/2,50+round(20*i*stp)))--cycle);
}

pen p1=blue, p2=0.9*red;
fill(g,p1);
fill(g,fillrule(1)+p2);
unfill(cle);
draw(cle,white);
shipout(rotate(-90)*bbox(Fill(lightyellow)));

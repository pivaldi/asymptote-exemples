// Barnsley's fern
// Fougère de Barnsley
size(5cm,0);

real ab=85, ac=-5;
real rc=0.8, rb=0.3;
path trk=(0,0)--(0,1);

transform [] t;
t[1] =shift(0,1)*rotate(ab)*scale(rb);
t[2] =shift(0,1)*rotate(-ab)*scale(rb);
t[3] =shift(0,1)*rotate(ac)*scale(rc);
real sum=0;

for(int i=0; i<100; ++i) sum+=(rc*cos(ac*pi/180))^i;
t[4] =xscale(0.01)*yscale(1/sum);

picture pic;
draw(pic,trk);
pair pt=(0,0);

for(int i=0; i < 1000; ++i) {
  pt=t[ 1+floor((3.0*rand()/randMax)) ]*pt;
}

int nbt;
for(int i=0; i < 200000; ++i) {
  nbt=1+floor((4.0*rand()/randMax));
  pt=t[nbt]*pt;
  draw(pt);
}

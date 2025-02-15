// Barnsley's fern
// Fougère de Barnsley
size(10cm,0);

real ab=72, ac=-7;
real rc=0.85, rb=0.35;
path trk=(0,0)--(0,1);

transform ta=shift(0,1)*rotate(ab)*scale(rb);
transform tb=shift(0,1)*rotate(-ab)*scale(rb);
transform tc=shift(0,1)*rotate(ac)*scale(rc);
transform td=shift(0,1)*rotate((ab+ac)/2)*scale(rb);
transform te=shift(0,1)*rotate(-(ab+ac)/2)*scale(rb);

picture pic;
draw(pic,trk,red+.8green);

//Construct a fern branch as atractor
int nbit=7;
for(int i=1; i<=nbit; ++i) {
  picture pict;
  add(pict,ta*pic);
  add(pict,tb*pic);
  add(pict,tc*pic);
  draw(pict,(0,0)--(0,1), (2*(i/nbit)^2)*bp+((1-i/nbit)*green+i/nbit*brown));
  pic=pict;
}

//Use the fern branch to construct... a fern branch
picture pict;
add(pict,ta*pic);
add(pict,tb*pic);

pair x=(0,1);
nbit=23;
for(int i=1; i<=nbit; ++i) {
  add(shift(x)*rotate(ac*i)*scale(rc^i)*pict);
  draw(tc^i*((0,0)--(0,1)), 2*(1.5-i/nbit)^2*bp+brown);
  x=tc*x;
}

shipout(bbox(3mm, 2mm+black, FillDraw(paleyellow)));

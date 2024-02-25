// Barnsley's fern
// Fougère de Barnsley
size(5cm,0);

real ab=85, ac=-5;
real rc=.85, rb=-.31;
path trk=(0,0)--(0,1);

transform ta=shift(0,1)*rotate(ab)*scale(rb);
transform tb=shift(0,1)*rotate(-ab)*scale(rb);
transform tc=shift(0,1)*rotate(ac)*scale(rc);

picture fern(int n) {
  picture opic;
  draw(opic,trk^^ta*trk^^tb*trk^^tc*trk);
  if (n==0) return opic;
  picture branch=fern(n-1);
  add(opic,branch);
  add(opic,ta*branch);
  add(opic,tb*branch);
  add(opic,tc*branch);
  return opic;
}

add(fern(6));

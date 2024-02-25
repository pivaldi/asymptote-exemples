size(10cm,0);
transform T=rotate(10)*xscale(1.1);
path c1=T*unitcircle, c2=T*scale(5)*unitcircle;
real l1=length(c1), l2=length(c2);

fill(scale(8)*shift(-0.5,-0.5)*unitsquare,blue);
int n=500;
real step=1/n;
for (int i=0; i < n; ++i) {
  real t=i*step;
  path g1=subpath(c1,t*l1,(t+step)*l1);
  path g2=subpath(c2,t*l2,(t+step)*l2);
  pair A=(relpoint(c1,t)+relpoint(c2,t))/2;
  pair B=(relpoint(c1,t+step)+relpoint(c2,t+step))/2;
  path sector=g1--reverse(g2)--cycle;
  pen trans=opacity(((2-(2*i/n)^1.5))/2);
  axialshade(sector,trans+i/n*white,A,trans+(i+1)/n*white,B);
}
shipout(bbox(lightblue+white,Fill),format="pdf");

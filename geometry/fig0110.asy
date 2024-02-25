import geometry;
size(10cm,0);

currentcoordsys=cartesiansystem((1.5,1.5),i=(1,0.5),j=(-1,1));
coordsys Rp=currentcoordsys;
coordsys Rs=cartesiansystem((-1.5,1.5),i=(-1,0.5),j=(-1,-1));
coordsys R=defaultcoordsys;

show("$O$","$\vec{\imath}$", "$\vec{\jmath}$", R);
show("$O'$","$\vec{u}$","$\vec{v}$", Rp, xpen=invisible);
show("$O''$","$\vec{u'}$","$\vec{v'}$", Rs, xpen=invisible);

int n=64;
real step=2pi/n;

for (int i=0; i<n; ++i) {
  pen p=(i/n)*red;
  dot(point(R,R.polar(1,step*i)),p);
  dot(point(Rp,Rp.polar(1,step*i)),p);
  dot(point(Rs,Rs.polar(1,step*i)),p);
}

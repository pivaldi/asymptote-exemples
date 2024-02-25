import geometry;
size(10cm,0);

currentcoordsys=cartesiansystem((2,1),i=(1,0.5),j=(-1,1));
coordsys Rp=currentcoordsys;
coordsys R=defaultcoordsys;

show("$O$","$\vec{\imath}$", "$\vec{\jmath}$", R);
show("$O'$", "$\vec{u}$", "$\vec{v}$", Rp, xpen=invisible);

pair a=(0.5,0.5);
pair b=(-0.5,-1);

point A=point(R,a), B=point(R,b);
dot("$A$",A,NW); dot("$B$",B,S);
line l=line(A,B);

point Ap=a, Bp=b;
dot("$A'$",Ap,W); dot("$B'$",Bp,SE);
line lp=line(Ap,Bp);

draw(l^^lp);

draw(l.A--l.A+l.u,blue,Arrow);
draw(l.A--l.A+l.v,blue,Arrow);
draw(lp.A--lp.A+lp.u,blue,Arrow);
draw(lp.A--lp.A+lp.v,blue,Arrow);

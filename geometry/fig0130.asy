import geometry;
size(10cm,0);

currentcoordsys=cartesiansystem((2,1),i=(1,0.5),j=(-1,1));
coordsys Rp=currentcoordsys;
coordsys Rs=cartesiansystem((-1,2),i=(-1,0.5),j=(-1,-1));
coordsys R=defaultcoordsys;

show("$O$","$\vec{\imath}$", "$\vec{\jmath}$", R);
show("$O'$","$\vec{u}$","$\vec{v}$", Rp, xpen=invisible);
show("$O''$", "$\vec{u'}$", "$\vec{v'}$", Rs, xpen=invisible);

pair a=(0.5,0.5);
pair b=(-0.5,-1);

point A=point(R,a), B=point(R,b);
dot("$A$",A,S); dot("$B$",B,S);
line l=line(A,B);

point Ap=a, Bp=b;
dot("$A'$",Ap); dot("$B'$",Bp,SE);
line lp=line(Ap,Bp);

point As=point(Rs,a), Bs=point(Rs,b);
dot("$A''$",As,S); dot("$B''$",Bs,SE);
line ls=line(As,Bs);

draw(l^^lp^^ls);

dot(intersectionpoint(l,lp),2mm+red);
dot(intersectionpoint(l,ls),2mm+red);
dot(intersectionpoint(lp,ls),2mm+red);

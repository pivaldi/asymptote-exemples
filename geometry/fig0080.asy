import geometry;
size(10cm,0);

currentcoordsys=cartesiansystem((1.5,1.5),i=(1,0.5),j=(-1,1));
coordsys Rp=currentcoordsys;
coordsys Rs=cartesiansystem((-1.5,1.5),i=(-1,0.5),j=(-1,-1));
coordsys R=defaultcoordsys;

show("$O$","$\vec{\imath}$", "$\vec{\jmath}$", R);
show("$O'$","$\vec{u}$","$\vec{v}$", Rp, xpen=invisible);
show("$O''$","$\vec{u'}$","$\vec{v'}$", Rs, xpen=invisible);

pair w=(0.75,1.5);
draw("$\overrightarrow{w}$",(0,0)--w,Arrow);

pair P=(1,1);
dot("$P$",P);
dot("$P$",point(Rp,P/Rp),N);
dot("$P$",point(Rs,P/Rs),S);

show("$\overrightarrow{w'}$", vector(w));
show("$\overrightarrow{w''}$", vector(Rs,w));

dot("$P'$",point(Rp,P));
dot("$P''$",point(Rs,P));

import geometry;
size(10cm,0);

currentcoordsys=cartesiansystem((1.5,1.5),i=(1,0.5),j=(-1,1));
coordsys Rp=currentcoordsys;
coordsys Rs=cartesiansystem((-1.5,1.5),i=(-1,0.5),j=(-1,-1));
coordsys R=defaultcoordsys;

show("$O$","$\vec{\imath}$", "$\vec{\jmath}$", R);
show("$O'$","$\vec{u}$","$\vec{v}$", Rp, xpen=invisible);
show("$O''$","$\vec{u'}$","$\vec{v'}$", Rs, xpen=invisible);

pair P=(1,1);
dot("$P$",P);

draw(format("$\vert OP\vert\simeq %.2f$",abs(P)),(0,0)--P,Arrows);

point Pp=P;
dot("$P'$",Pp);
vector wp=Pp;
show(format("$\vert O'P'\vert= %.2f$",abs(Pp)), wp, Arrows);

point Ps=point(Rs,P);
dot("$P''$",Ps,S);
vector ws=Ps;
show(format("$\vert O''P''\vert\simeq %.2f$",abs(Ps)), ws, Arrows);

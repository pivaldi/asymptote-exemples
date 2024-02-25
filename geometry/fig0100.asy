import geometry;
size(10cm,0);

currentcoordsys=cartesiansystem((1.5,1.5),i=(1,0.5),j=(-1,1));
coordsys Rp=currentcoordsys;
coordsys R=defaultcoordsys;

show("$O$","$\vec{\imath}$", "$\vec{\jmath}$", R);
show("$O'$", "$\vec{u}$", Label("$\vec{v}$",align=NE), Rp, xpen=invisible);

pair w=(1.5,0.75);
draw("$\overrightarrow{w}$",(0,0)--w,Arrow);

pair P=(1,-1);
dot("$P$",P);

show("$\overrightarrow{w'}$", vector(w));

dot("$P'$",point(Rp,P),N);

point Ip=I;
dot("$I'$",Ip,N);
dot("$I'*P'$",Ip*point(Rp,P),S);
dot("$I*P'$",I*point(Rp,P),N);

vector wp=Ip*vector(w);
show(Label("$I'*\overrightarrow{w'}$",EndPoint), wp);

vector foo=I*vector(w);
show("$I*\overrightarrow{w'}$", foo);

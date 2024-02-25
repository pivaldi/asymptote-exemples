import geometry;
size(8cm,0);

currentcoordsys=cartesiansystem((1.25,0.75),i=(1,1),j=(-1,1));
coordsys Rp=currentcoordsys;
coordsys R=defaultcoordsys;

show("$O$", "$\vec{\imath}$", "$\vec{\jmath}$", R);
show("$O'$","$\vec{u}$","$\vec{u}$", Rp, xpen=invisible);

vector w=(0.125,0.5);
point P=(1,0.5);

dot("$P$",P);
draw(Label("$\overrightarrow{w}$",EndPoint), origin()--origin()+w, Arrow);
draw("$\overrightarrow{O'P}+\overrightarrow{w}$",
     origin()--P+w, Arrow);

dot("$M$",P+w,red);

/*<asyxml><view file="modules/geometry.asy" type="pair" signature="locate(explicit vector)"/></asyxml>*/
draw("$\overrightarrow{w}$", (0,0)--locate(w), W,Arrow);

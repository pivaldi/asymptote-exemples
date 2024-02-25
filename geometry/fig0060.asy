import geometry;
size(12cm,0);

currentcoordsys=cartesiansystem((1.25,0.75),i=(1,0.5),j=(-1,1));
coordsys Rp=currentcoordsys;
coordsys R=defaultcoordsys;

show(Label("$O$",align=SE), "$\vec{\imath}$", Label("$\vec{\jmath}$",align=E), R);
show("$O'$", "$\vec{u}$", "$\vec{v}$", Rp, xpen=invisible);

vector w=(0.25,0.5);
point P=(1,0.5);

dot("$P$",P,W);
show("$\overrightarrow{w}$", w);

/*<asyxml><view file="modules/geometry.asy" type="transform" signature="rotateO(real)"/></asyxml>*/
point Pp=rotateO(90)*P;

dot("Pp=rotateO(90)*P", Pp, W);

dot("rotate(90,Pp)*P", rotate(90,Pp)*P, W);
/*<asyxml><view file="modules/geometry.asy" type="transform" signature="scale(real,point)"/></asyxml>*/
dot("scale(-2,Pp)*P", scale(-2,Pp)*P, NE);

/*<asyxml><view file="modules/geometry.asy" type="transform" signature="scaleO(real)"/></asyxml>*/
dot("scaleO(2)*P", scaleO(2)*P,red);
/*<asyxml><view file="modules/geometry.asy" type="transform" signature="xscaleO(real)"/></asyxml>*/
dot("xscaleO(2)*P", xscaleO(2)*P);
/*<asyxml><view file="modules/geometry.asy" type="transform" signature="yscaleO(real)"/></asyxml>*/
dot("yscaleO(2)*P", yscaleO(2)*P,W);

vector wp=rotateO(90)*w;

show("$\overrightarrow{w'}$", wp);

draw("$\overrightarrow{w}$", (0,0)--locate(w), W, Arrow);
draw("$\overrightarrow{w'}$", (0,0)--locate(wp), S, Arrow);

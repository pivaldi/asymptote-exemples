size(12cm,0);
import geometry;
import base_pi;
dotfactor*=2;

currentcoordsys=cartesiansystem((0,0),i=(1,0.5),j=(-1,1));
coordsys Rp=currentcoordsys;
show("$O'$","$\vec{u}$","$\vec{v}$", Rp, xpen=invisible);

path cle=randompath(20);
draw(cle);

point A=(0,1.5), B=(1,-0.5);

line l=line(A,B);
draw(l);

/*<asyxml><view file="modules/geometry.asy" type="pair[]" signature="intersectionpoints(line,path)"/></asyxml>*/
dot(intersectionpoints(l,cle));

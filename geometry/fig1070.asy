import geometry;
size(8cm,0);

// currentcoordsys=cartesiansystem((1,2),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

/*<asyxml><view file="modules/geometry.asy" type="" signature="struct mass"/></asyxml>*/
mass A=mass((1,0),3);/*<asyxml><view file="modules/geometry.asy" type="mass" signature="mass(point,real)"/></asyxml>*/

mass B=mass((0,1),sqrt(3));
point C=(0.25,0);

/*<asyxml><view file="modules/geometry.asy" type="void" signature="dot(picture,Label,mass,align,string,pen)"/></asyxml>*/
dot("$\left(B;\sqrt{3}\right)$",B,N,format="");

dot("C",C,S);
dot("A",A,S);
draw(A--B--C--cycle);

/*<asyxml><view file="modules/geometry.asy" type="mass" signature="masscenter(... mass[])"/></asyxml>*/
dot("G",masscenter(A,B,mass(C)),S);

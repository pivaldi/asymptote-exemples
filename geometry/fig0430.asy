import geometry;
size(10cm,0);

// currentcoordsys=cartesiansystem((0,0),i=(1,1),j=(-0.5,.75));
// show(currentcoordsys);

point C=(0,0);
point Cp=(0.5,0.5);
dot("$C$",C,NW,red);
dot("$C'$",Cp,N,red);

ellipse el1=ellipse(C,2,1);
ellipse el2=ellipse(Cp,3,1,40);
draw(el1^^el2);

dotfactor*=2;

/*<asyxml><view file="modules/geometry.asy" type="point[]" signature="intersectionpoints(ellipse,ellipse)"/></asyxml>*/
point[] inter=intersectionpoints(el1,el2);
dot(inter);

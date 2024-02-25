import geometry;
size(8cm,0);

currentcoordsys=cartesiansystem((0,0),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(-0.5,-0.5);
point B=(1,0.5);
point C=(0.5,1);
dot("$A$",A,SW);
dot("$B$",B,2N+0.5W);
dot("$C$",C,2N+0.5W);

/*<asyxml><view file="modules/geometry.asy" type="circle" signature="circle(point,point,point)"/></asyxml>*/
circle c1=circle(A,B,C);
dot("$\Omega$",c1.C,N);
draw(c1);

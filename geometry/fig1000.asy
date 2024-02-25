import geometry;
size(6cm,0);

currentcoordsys=cartesiansystem((1,2),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(-1,1);
point B=(2,2);
point M=(1,3);

/*<asyxml><view file="modules/geometry.asy" type="arc" signature="arccircle(point,point,point)"/></asyxml>*/
arc AMB=arccircle(A,M,B);
draw(AMB,linewidth(3mm),Arrow(5mm),TrueMargin(0,0.5mm));
dot("$C$",AMB.el.C);
draw(arccircle(A,B,M),1mm+red,Arrow(3mm));

dot("$A$",A,2SW,blue);
dot("$B$",B,2E,blue);
dot("$M$",M,2N,blue);

import geometry;
size(12cm,0);

currentcoordsys=cartesiansystem((2,1),i=expi(pi/18)*(1,0),j=expi(pi/18)*(0,1));
show(currentcoordsys,xpen=invisible);

point A=(-1.5,-1);
point C=(-1,1);
point B=(-1,0);

dot("$A$", A, 2W);
dot("$B$", B, 2E);

line l1=hline()+C;
draw("$(l_1)$", l1, blue);
dot("$C$", C, NE);

line l2=line(A, B, false);
draw(Label("$(AB]$",Relative(.25),SE), l2, green);

/*<asyxml><view file="modules/geometry.asy" type="line" signature="complementary(explicit line)"/></asyxml>*/
draw("Complementary of $(AB]$", complementary(l2), dotted+roundcap);

point p=intersectionpoint(l1,l2);

/*<asyxml><view file="modules/geometry.asy" type="bool" signature="defined(pair)"/></asyxml>*/
string s="$(l_1)$" + (defined(p) ? " intersects " : " does not intersect ") + "$(AB]$";
label(s, A+1.75*l2.u,W);

draw(box(locate((-2,-2)),locate((2,2))), invisible);

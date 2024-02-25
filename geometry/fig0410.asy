import geometry;
size(10cm);

// currentcoordsys=cartesiansystem((2,1),i=(1,0.5),j=(-0.25,.75));
// show(currentcoordsys);

point A=(-1,-1);
point B=(2,1);
dot("$A$",A,S,red);
dot("$B$",B,NW,red);

line l=line(A,B,false);
line ll=hline()+0.5*B;
draw(l^^ll);
draw(complementary(l),dashed+grey);

point F=(2,-1.5);
dot("$F$",F,N);

parabola p=parabola(F,0.2,110);
draw(p);

dotfactor*=2;

/*<asyxml><view file="modules/geometry.asy" type="point[]" signature="intersectionpoints(line,parabola)"/></asyxml>*/
dot(intersectionpoints(l,p), red);
dot(intersectionpoints(ll,p), red);

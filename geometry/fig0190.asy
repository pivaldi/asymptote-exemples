unitsize(1cm);
import geometry;
dotfactor*=1.5;
linemargin=5mm;

// currentcoordsys=cartesiansystem((2,1),i=(1,0.5),j=(-1,1));
show(currentcoordsys);

point A=(-3,-3), B=(3,4), C=(1,-2);

line l1=line(A,B);
draw(l1,red);
dot("$A$",A,SE);
dot("$B$",B,NW);

/*<asyxml><view file="modules/geometry.asy" type="line" signature="line(real,point)"/></asyxml>*/
line l2=line(100,C);
draw(l2,blue);
dot("$C$",C);

point M=relpoint(A--C,0.6);
dot("$M$",M);

/*<asyxml><view file="modules/geometry.asy" type="transform" signature="projection(line,line,bool)"/></asyxml>*/
point P=projection(l1,l2)*M;
dot("$P$",P,2W);
draw(line(M,P),blue+dashed);

draw(box((-5,-5),(5,5)),invisible);

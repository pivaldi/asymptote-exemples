size(12cm);
import geometry;
dotfactor*=1.5;

currentcoordsys=cartesiansystem((2,1),i=(1,1),j=(-4,1));
show(currentcoordsys);

point A=(1,1), B=(2,1);
line l1=line(A,B);

draw(l1);
dot("$A$",A);
dot("$B$",B);

point C=(-1,0), D=(-2,-2);
line l2=line(C,D);

draw(l2);
dot("$C$",C,S);
dot("$D$",D,N);

point M=(2,-0.5);
dot("$M$",M,0.8*red);

/*<asyxml><view file="modules/geometry.asy" type="point[]" signature="sameside(point,line,line)"/></asyxml>*/
point[] Ms=sameside(M,l1,l2);
draw(M--Ms[0]^^M--Ms[1],0.8red);
dot(Ms[0]^^Ms[1],0.8red);

point P=(-3,-1);
dot("$P$",P,S,blue);

point[] Ps=sameside(P,l1,l2);
draw(P--Ps[0]^^P--Ps[1],blue);
dot(Ps[0]^^Ps[1],blue);

point Q=(2,1.5);
dot("$Q$",Q,N,green);

point[] Qs=sameside(Q,l1,l2);
draw(Q--Qs[0]^^Q--Qs[1],green);
dot(Qs[0]^^Qs[1],green);

import geometry;
size(15cm);

currentcoordsys=cartesiansystem((0,0),i=(1,0.5),j=(-1,0.5));
coordsys R=currentcoordsys;
show(R, xpen=invisible);

point A=(2,2);
dot("A",A,SE);

point B=(3,1.5);
dot("B",B,SE);

point C=A+(4,2);
dot("C",C);

drawline(A,B,red);
drawline(A,C,blue);

/*<asyxml><view file="modules/geometry.asy" type="transform" signature="scale(real,point,point,point,point,bool)"/></asyxml>*/
transform t=scale(2,A,B,A,C);
/*<asyxml><view file="modules/geometry.asy" type="transform" signature="projection(point,point,point,point,bool)"/></asyxml>*/
transform proj=projection(A,B,A,C);

point M=(2,4);
point Mh=proj*M;
dot("$H_M$",Mh,SE);
dot("$M$",M);
point Mp=t*M;
dot("\small$scale(2,A,B,A,C)*M=M'$",Mp,W);
drawline(M,Mh);

point P=(1,-1);
point Ph=proj*P;
dot("$H_P$",Ph,NW);
drawline(P,Ph);
dot("$P$",P);

transform t=scale(-1,A,B,A,C);
point Pp=t*P;
dot("\small$P'=scale(-1,A,B,A,C)*P$",Pp);
draw(P--Pp);

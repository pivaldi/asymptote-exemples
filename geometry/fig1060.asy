import geometry;
size(10cm,0);

// currentcoordsys=cartesiansystem((1,2),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(1,2);
point B=A+(2,0);
dot("$A$",A,0.25S+2W,red);
dot("$B$",B,0.25S+2E,red);

for (int i=0; i < 2; ++i) {
  real a=(i == 0) ? 60 : -100;
  /*<asyxml><view file="modules/geometry.asy" type="point" signature="arcsubtendedcenter(point,point,real)"/></asyxml>*/
  dot(arcsubtendedcenter(A,B,a),2mm+blue);
  
  point arccenter=arcsubtendedcenter(A,B,a/2);
  dot(arccenter,2mm+red);

  /*<asyxml><view file="modules/geometry.asy" type="arc" signature="arcsubtended(point,point,real)"/></asyxml>*/
  arc arcsubtended=arcsubtended(A,B,a);
  draw(arcsubtended,blue);

  arc arc=arcsubtended(A,B,a/2);
  draw(arc,red);
  
  point M=relpoint(arcsubtended,0.75);
  dot(format("%0g",degrees(B-M)-degrees(A-M)),
      M,(-1)^(i+1)*I*dir(arcsubtended,reltime(arcsubtended,0.6)));
  draw(A--M--B,blue);

  label(format("%0g",degrees(B-arccenter)-degrees(A-arccenter)),
      arccenter,(-1)^(i+1)*S);
  draw(A--arccenter--B,red);
 }

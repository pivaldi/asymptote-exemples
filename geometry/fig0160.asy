size(10cm);
import geometry;
dotfactor*=1.5;
linemargin = 5mm;

currentcoordsys=cartesiansystem((2,1),i=(1,1),j=(-4,1));
show(currentcoordsys);

point A=(1,1), B=(2,1);
/*<asyxml><view file="modules/geometry.asy" type="" signature="struct line"/></asyxml>*/
line l1=line(A,B);/*<asyxml><view file="modules/geometry.asy" type="line" signature="line(point,bool,point,bool)"/></asyxml>*/

/*<asyxml><view file="modules/geometry.asy" type="void" signature="draw(picture,Label,line,bool,bool,align,pen,arrowbar,Label,marker)"/></asyxml>*/
draw(l1,red);
dot("$A$",A);
dot("$B$",B);

for (int i=0; i<10; ++i){
  pair bad=(i,l1.slope*i+l1.origin);
  point good=bad;
  draw(Label("bad",align=S),bad,linewidth(2bp));
  draw(Label(good @ l1 ? "good":"bad",align=W),good,linewidth(2bp));
}


import geometry;
size(10cm);

// currentcoordsys=cartesiansystem((2,1),i=(1,0.5),j=(-0.25,0.75));
// show(currentcoordsys);

point A=(-1,0), B=(2,0), C=(0,2);

draw(line(A,B), linewidth(bp));
draw(line(A,C), linewidth(bp));
draw(line(B,C), linewidth(bp));

/*<asyxml><view file="modules/geometry.asy" type="circle" signature="circle(point,point,point)"/></asyxml>*/
circle cc=circle(A,B,C);
draw(cc, blue);
dot(cc.C, blue);

/*<asyxml><view file="modules/geometry.asy" type="circle" signature="incircle(point,point,point)"/></asyxml>*/
circle ic=incircle(A,B,C);
draw(ic, red);
dot(ic.C, red);


/*<asyxml><view file="modules/geometry.asy" type="circle" signature="excircle(point,point,point)"/></asyxml>*/
circle ec=excircle(A,B,C);
/*<asyxml><view file="modules/geometry.asy" type="void" signature="clipdraw(picture,Label,path,align,pen,arrowbar,arrowbar,real,real,Label,marker)"/></asyxml>*/
clipdraw(ec, green);
dot(ec.C, green);

ec=excircle(A,C,B);
clipdraw(ec, green);
dot(ec.C, green);

ec=excircle(C,B,A);
clipdraw(ec, green);
dot(ec.C, green);

dot("G",centroid(A,B,C),NE);

// Enlarge the bounding box of the current picture
// draw(box((-2.5,-3), (3.5,3.5)));

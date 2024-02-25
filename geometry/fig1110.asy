import geometry;
size(10cm,0);

// currentcoordsys=cartesiansystem((2,1),i=(1,0.5),j=(-0.25,0.75));
// show(currentcoordsys);

triangle t=triangle((-1,0), (2,0), (0,2));

/*<asyxml><view file="modules/geometry.asy" type="void" signature="drawline(picture,triangle,pen)"/></asyxml>*/
drawline(t, linewidth(bp));
/*<asyxml><view file="modules/geometry.asy" type="void" signature="label(picture,Label,Label,Label,triangle,real,real,pen,filltype)"/></asyxml>*/
label(t,alignFactor=4);

/*<asyxml><view file="modules/geometry.asy" type="circle" signature="circle(triangle)"/></asyxml>*/
circle cc=circle(t);
draw(cc, 0.8blue);
dot(cc.C, blue);
/*<asyxml><view file="modules/geometry.asy" type="triangle" signature="tangential(triangle)"/></asyxml>*/
triangle tgt=tangential(t);
draw(tgt, bp+0.8blue);
label("$A_1$", "$B_1$", "$C_1$", tgt, blue);

/*<asyxml><view file="modules/geometry.asy" type="circle" signature="incircle(triangle)"/></asyxml>*/
circle ic=incircle(t);
draw(ic, 0.8red);
dot(ic.C, red);
triangle intouch=intouch(t);
draw(intouch, bp+0.8red);
label("$A_2$", "$B_2$", "$C_2$", intouch, red);

/*<asyxml><view file="modules/geometry.asy" type="circle" signature="excircle(side,triangle)"/></asyxml>*/
circle ec=excircle(t.AB);
clipdraw(ec, 0.8green);
dot(ec.C, green);

ec=excircle(t.AC);
clipdraw(ec, 0.8green);
dot(ec.C, green);

ec=excircle(t.BC);
clipdraw(ec, 0.8green);
dot(ec.C, green);

/*<asyxml><view file="modules/geometry.asy" type="triangle" signature="extouch(triangle)"/></asyxml>*/
triangle ext=extouch(t);
draw(ext, bp+0.8green);
label("$A_3$", "$B_3$", "$C_3$", ext, green);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="extouch(side)"/></asyxml>*/
dot(extouch(t.AB), 0.8*green);
dot(extouch(t.BC), 0.8*green);
dot(extouch(t.CA), 0.8*green);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="intouch(side)"/></asyxml>*/
dot(intouch(t.AB), 0.8*red);
dot(intouch(t.BC), 0.8*red);
dot(intouch(t.CA), 0.8*red);

// Enlarge the bounding box of the current picture
draw(box((-2.5,-3), (3.5,3.5)), invisible);

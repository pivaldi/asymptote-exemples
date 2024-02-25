import geometry;

size(10cm);

// currentcoordsys=cartesiansystem((2,1),i=(1,0.5),j=(-0.25,.75));
// show(currentcoordsys);

/*<asyxml><view file="modules/geometry.asy" type="triangle" signature="triangleabc(real,real,real,real,point)"/></asyxml>*/
triangle t=triangleabc(3,4,5);
/*<asyxml><view file="modules/geometry.asy" type="void" signature="show(picture,Label,Label,Label,Label,Label,Label,triangle,pen,filltype)"/></asyxml>*/
show(La="3", Lb="4", Lc="5",t);

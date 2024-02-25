import geometry;

size(10cm);

// currentcoordsys=cartesiansystem((2,1),i=(1,0.5),j=(-0.25,.75));
// show(currentcoordsys);

/*<asyxml><view file="modules/geometry.asy" type="triangle" signature="triangleAbc(real,real,real,real,point)"/></asyxml>*/
triangle t=triangleAbc(60,3,5,angle=90);
show(Lb="3", Lc="5",t);
markangle("$60^\circ$",t.B,t.A,t.C);

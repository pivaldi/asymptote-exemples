import geometry;
size(15cm,0);

// currentcoordsys=cartesiansystem((2,1),i=(1,0.25),j=(-0.25,.75));
// show(lj=Label("$\vec{\jmath}$",EndPoint), currentcoordsys);

point A=(-1,-0.5);
point B=(1,-0.5);
point C=(-1,0.5);

line l1=line(A,B);
draw("$(l_1)$",l1,red);

/*<asyxml><view file="modules/geometry.asy" type="" signature="struct segment"/></asyxml>*/
segment s=segment(A,B);
draw(s, linewidth(2bp));
dot("$A$", A, SW);
dot("$B$", B, SE);
dot("$C$", C, S);

segment s1=parallel(C,s);
draw(Label("$s_1$",Relative(0.75)),s1);

Label lt=Label("Complementary of $s_1$",Relative(0.5),align=N,grey);
Label[] L={lt, lt};

/*<asyxml><view file="modules/geometry.asy" type="line[]" signature="complementary(explicit segment)"/></asyxml>*/
line[] cs1=complementary(s1);

/*<asyxml><view file="modules/geometry.asy" type="void" signature="draw(picture,Label[],line[],align,pen,arrowbar,Label,marker)"/></asyxml>*/
draw(L, cs1, 2mm+lightgrey);

draw(box(locate((-2.5,-1)),locate((2.5,1))), invisible);

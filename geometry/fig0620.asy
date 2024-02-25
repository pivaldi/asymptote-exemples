import geometry;
size(10cm);

point F=(1,-1.5);
dot("$F$",F,N,red);

parabola p=parabola(F,0.2,110);

draw(p);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="curpoint(explicit parabola,real)"/></asyxml>*/
dot("curpoint(p, 0)",curpoint(p,0),SE);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="point(parabola,abscissa)"/></asyxml>*/
dot("curpoint(p, 0.5)",point(p,curabscissa(0.5)),NE);
// point(p,curabscissa(0.5)) can be replaced by curpoint(p,0.5)

dot("curpoint(p, -0.5)",curpoint(p,-0.5),W);
dot("curpoint(p, -2)",curpoint(p,-2),W);
dot("curpoint(p, 2)",curpoint(p,2),E);

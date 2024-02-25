size(8cm,0);
import patterns;

add("hatchback",hatch(NW));
filldraw(xscale(2)*unitsquare,pattern("hatchback"));

add("r_hatchback",hatch(2.5mm,NW,.8red));
filldraw(shift(0,-2)*yscale(2)*unitsquare,pattern("r_hatchback"));

add("b_hatchback",hatch(NW,2.5mm+.8blue));
filldraw(shift(1,-2)*yscale(2)*unitsquare,pattern("b_hatchback"));

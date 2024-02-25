size(4cm,0);
dotfactor*=5;

dot(scale(2)*"A",(0.5,1),5N);

layer();

dot(scale(2)*"B",(1.5,1),5N);
filldraw(scale(2)*unitsquare, lightgray+opacity(.5));

shipout(bbox(5mm,black,RadialShade(lightblue,darkblue)), "pdf");

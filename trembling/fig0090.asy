unitsize(1cm);
import trembling;
import base_pi; // for rotatedLabel.

startTrembling();

point pA = (0,0);
point pB = (0,4);
point pC = pB+6*(rotate(35)*unit(pA-pB));
point pD = pC+4*(rotate(-112)*unit(pB-pC));
point pE = pD+4*(rotate(-78)*unit(pC-pD));
point pFi = rotate(35,pE)*pD;

dot(Label("$A$",align=SE),pA);
dot(Label("$B$",align=NW),pB);
dot(Label("$C$",align=SW),pC);
dot(Label("$D$",align=SE),pD);
dot(Label("$E$",align=NW),pE);

line l1 = line(pA,false,pA-(1,0));
line l2 = line(pE,false,pFi);

draw(l1);
draw(l2);
draw(pA--pB, StickIntervalMarker(1,2,size=6,angle=-45,red,true));
draw(rotatedLabel("$6 \; cm$"), pB--pC, N);
draw(rotatedLabel("$4 \; cm$"), pC--pD, S,
     StickIntervalMarker(1,2,size=6,angle=-45,red));
draw(pD--pE,
     StickIntervalMarker(1,2,size=6,angle=-45,red));

markrightangle(pA-(1,0),pA,pB,blue);
markangle(Label("$35^\circ$"),pA,pB,pC,radius=12mm,blue,StickIntervalMarker(i=1,n=1,size=4,blue));
markangle(Label("$112^\circ$"),pB,pC,pD,radius=7mm,blue);
markangle(Label("$78^\circ$"),pC,pD,pE,radius=5mm,blue);
markangle(pD,pE,pFi,radius=12mm,blue,StickIntervalMarker(i=1,n=1,size=4,blue));

addMargins(30mm,0mm,40mm,0mm);
shipout(bbox(xmargin=1mm,invisible));

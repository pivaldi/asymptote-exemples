import geometry;
size(8cm,0);

// currentcoordsys=cartesiansystem((1,2),i=(1,0.5),j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(1,1);
dot("$A$",A,S,0.8red);

real R=2;
/*<asyxml><view file="modules/geometry.asy" type="" signature="struct arc"/></asyxml>*/
arc C=arc(ellipse(A,2R,R),45,180,fromCenter);
draw(C,Arrow);

/*<asyxml><view file="modules/geometry.asy" type="arc" signature="complementary(arc)"/></asyxml>*/
draw(complementary(C),dashed+grey,Arrow(position=Relative(0.75)));

/*<asyxml><view file="modules/geometry.asy" type="arc" signature="*(transform,explicit arc)"/></asyxml>*/
arc Cp=scale(0.5,A)*C;
draw(Cp,0.8red,Arrow);

arc Cp=scale(-0.5,A)*C;
draw(Cp,0.8blue,Arrow);

arc Cp=scale(1.1,A)*C;
/*<asyxml><view file="modules/geometry.asy" type="arc" signature="reverse(arc)"/></asyxml>*/
draw(reverse(Cp),0.8*yellow,Arrow);

arc Cp=scale(0.9,A)*C;
draw(rotate(225,A)*Cp,0.8green,Arrow);

size(10cm,0);

transform r60=rotate(60);

pair A=(sqrt(3)/2,-.5);
pair B=r60*A, C=r60*B, D=r60*C, E=r60*D, F=r60*E;

path AB=A{dir(90)}..(.6,.5)..B{dir(0)};
path DE=shift(E-A)*reverse(AB);
path BC=B{dir(45)}..(.75,.7){dir(150)}..{dir(135)}(.65,.75){dir(70)}..(.5,1.25)..C{dir(255)};
path EF=shift(F-B)*reverse(BC);
path CD=C{dir(255)}..(-.4,.5){dir(200)}..D{dir(160)};
path FA=shift(A-C)*reverse(CD);

draw(A--B--C--D--E--F--cycle,linewidth(2pt));
draw(AB,2pt+.8red);
draw(DE,2pt+.8red);
draw(BC,2pt+.8blue);
draw(EF,2pt+.8blue);
draw(CD,2pt+.8green);
draw(FA,2pt+.8green);

picture hexa;
picture eye;

filldraw(hexa,AB--BC--CD--DE--EF--FA--cycle,black,white);
filldraw(eye,rotate(5)*xscale(.4)*unitcircle,white);
filldraw(hexa,subpath(AB,1,2)--subpath(BC,0,2){dir(225)}..{dir(245)}cycle,.1red+yellow,white);
draw(hexa,point(BC,0.1){dir(115)}.. (.8,.55) ..(.6,.65){dir(180)},yellow+grey);
filldraw(eye,rotate(5)*xscale(.4)*unitcircle,white);
fill(eye,rotate(5)*shift(0,-.1)*xscale(.25)*scale(.5)*unitcircle);
add(hexa,shift(.6,.9)*scale(.1)*eye);

add(shift(3,0)*hexa);

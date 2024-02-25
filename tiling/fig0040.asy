size(15cm,0);

transform r60=rotate(60);
picture hexa;
picture eye;

pair A=(sqrt(3)/2,-.5);
pair B=r60*A, C=r60*B, D=r60*C, E=r60*D, F=r60*E;

//Body - corps
path AB=A{dir(90)}..(.6,.5)..B{dir(0)};
path DE=shift(E-A)*reverse(AB);
path BC=B{dir(45)}..(.75,.7){dir(150)}..{dir(135)}(.65,.75){dir(70)}..(.5,1.25)..C{dir(255)};
path EF=shift(F-B)*reverse(BC);
path CD=C{dir(255)}..(-.4,.5){dir(200)}..D{dir(160)};
path FA=shift(A-C)*reverse(CD);

filldraw(hexa,AB--BC--CD--DE--EF--FA--cycle,black,white);

//Nozzle - bec
filldraw(hexa,subpath(AB,1,2)--subpath(BC,0,2){dir(225)}..{dir(245)}cycle,.1red+yellow,white);
draw(hexa,point(BC,0.1){dir(115)}.. (.8,.55) ..(.6,.65){dir(180)},yellow+grey);

//Eye - oeil
filldraw(eye,rotate(5)*xscale(.4)*unitcircle,white);
filldraw(eye,rotate(5)*xscale(.4)*unitcircle,white);
fill(eye,rotate(5)*shift(0,-.1)*xscale(.25)*scale(.5)*unitcircle);
add(hexa,shift(.6,.9)*scale(.1)*eye);

//Circular paving with the unit hexagonal picture "hexa"
picture pavehexagonal(picture hexa, int depth=1)
{
  picture opic;
  pair center;
  real a,ap,r,rp,r_d=180/pi;

  add(opic, hexa);

  for(int j=0; j<depth; ++j)
    {
      for (int i=1; i<=6; ++i)
 {
   a=i*60-30;
   r=j*sqrt(3);
   center=r*(rotate(a)*(1,0));
   add(opic, shift(center)*hexa);
   rp=r;
   ap=0;
   for (real k=0; k<j-1; ++k)
     {
       r=sqrt((1.5*(j-1 - k))^2 + 3/4*(j+1 + k)^2);
       ap+=r_d*acos((rp^2 + r^2 - 3)/(2*r*rp));
       center=r*(rotate(a + ap)*(1,0));
       add(opic, shift(center)*hexa);
       rp=r;
     }
 }
    }
  return opic;
}

add(pavehexagonal(rotate(30)*hexa,3));

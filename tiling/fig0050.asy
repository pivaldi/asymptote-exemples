size(10cm,0);

transform r60=rotate(60);
picture hexa;

pair A=(1,0);
pair B=r60*A, C=r60*B, D=r60*C, E=r60*D, F=r60*E;

real ad=30;
real tensio=.15;
path AB=A {dir(120-ad)} .. shift(tensio*dir(30))*midpoint(A--B)  .. B {dir(120+ad)};
path BC=reverse(rotate(240,B)*AB);
path CD=reverse(rotate(240,C)*BC);
path DE=reverse(rotate(240,D)*CD);
path EF=reverse(rotate(240,E)*DE);
path FA=reverse(rotate(240,F)*EF);

real lux=-.3, sq=sqrt(3)/2;
radialshade(hexa,AB--BC--CD--DE--EF--FA--cycle,
	    lightgrey,(lux*sq,lux/2),0,
	    grey,(lux*sq,lux/2),1+abs(lux));

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

add(pavehexagonal(hexa,4));

size(6cm,0);

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

picture hexa;
fill(hexa, polygon(6));
path inh=(0,0)--(.6,sqrt(3)/4)--(.5,sqrt(3)/2)--cycle;

for(int i=0; i<6; ++i)
  {
    fill(hexa, rotate(60*i)*inh,.5red);
  }

draw(hexa, inh);
add(rotate(45)*pavehexagonal(hexa,10));
clip(scale(10)*shift(-.5,-.5)*unitsquare);

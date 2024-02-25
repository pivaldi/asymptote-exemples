size(10cm,0);

picture pavehexagonal(int depth=1)
{
  picture opic;
  path hexa=polygon(6);
  pair center;
  real a,ap,r,rp,r_d=180/pi;

  for(int j=0; j<depth; ++j)
    {
      for (int i=1; i<=6; ++i)
	{
	  a=i*60-30;
	  r=j*sqrt(3);
	  center=r*(rotate(a)*(1,0));
	  filldraw(opic, shift(center)*hexa, j/depth*.8red+(1-j/depth)*.8*blue);
	  //Uncomment to see centers of hexagons
	  dot(opic, shift(center)*midpoint(point(hexa,0)--point(hexa,3)));
	  //Uncomment to see circles passing by centers
	  //draw(opic, scale(r)*unitcircle, j/depth*red+(1-j/depth)*blue);
	  rp=r;
	  ap=0;
	  for (real k=0; k<j-1; ++k)
	    {
	      r=sqrt((1.5*(j-1 - k))^2 + 3/4*(j+1 + k)^2);
	      ap+=r_d*acos((rp^2 + r^2 - 3)/(2*r*rp));
	      center=r*(rotate(a + ap)*(1,0));
	      filldraw(opic, shift(center)*hexa, j/depth*.8*red+(1-j/depth)*.8*blue);
	      //Uncomment to see the centers of hexagons
	      //dot(opic, shift(center)*midpoint(point(hexa,0)--point(hexa,3)));
	      rp=r;
	      //Uncomment to see circles passing by centers
	      //draw(opic, scale(r)*unitcircle, j/depth*red+(1-j/depth)*blue);
            }
        }
    }
  return opic;
}


add(pavehexagonal(7));

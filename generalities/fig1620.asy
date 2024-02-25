size(6cm,0);

pair A=2expi(pi/2);

pair homography(pair z)
{
  return (z^2+A)/(z+2);
}

guide image;
pair tpt;

draw(unitcircle);
for(real t=0; t<length(unitcircle);t+=.05)
  {
    tpt=homography(point(unitcircle,t));
    image=image..tpt;
    draw(point(unitcircle,t)--tpt,dotted);
  }
draw(image..cycle,red);

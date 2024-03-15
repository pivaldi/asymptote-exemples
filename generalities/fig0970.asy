size(6cm,0);

//Return Circle AB diameter
path circle(pair A, pair B)
{
  return shift(midpoint(A--B))*scale(abs(A-B)/2)*unitcircle;
}

pair A=(0,0), B=(1,0);

draw(circle(A,B));
dot(A--B);

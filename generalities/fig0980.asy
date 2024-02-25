size(6cm,0);

//Return Circle AB diameter
path circle(pair A, pair B)
{
  return shift(midpoint(A--B))*scale(abs(A-B)/2)*unitcircle;
}

pair A=(0,0), B=(3,0), C=(2,1);

draw(A--B,.8blue);
draw(A--C,.8red);
draw(B--C,.8green);
draw(circle(A,B),.8blue);
draw(circle(A,C),.8red);
draw(circle(B,C),.8green);

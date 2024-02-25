// Use of the windingnumber works also for CROSSED curves

size(8cm,10cm,false);

import math;

bool counterclockwise(path g)
{
  // Return "true" if "g" is counterclockwise
  // Retounre "true" si "g" est dans le sens contraire des aiguilles d'une montre
  return (windingnumber(g,inside(g)) > 0);
}

path counterclockdirected(path g)
{
  if (counterclockwise(g)) return g; else return reverse(g);
}

guide p=randompath(30)..cycle;
draw(counterclockdirected(reverse(p)),Arrow(10bp,Relative(0.025)), BeginBar);
draw(counterclockdirected(p),Arrow(10bp,FillDraw(red),Relative(.05)), BeginBar);

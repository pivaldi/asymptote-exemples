size(6cm);
bool counterclockwise(path g, int n=10^3)
{
  // Return "true" if "g" (SIMPLE CURVE i.e. NON CROSSED) is counterclockwise
  // Retounre "true" si "g" (NON CROISÉ) est dans le sens contraire des aiguilles d'une montre
  if (!cyclic(g) || length(g)==0) abort("The function 'clocksize' needs cyclic path.");
  pair [] pt;
  real l=length(g),
    step=1/n,
    t=0,
    sa=0;
  do {
    sa +=point(g,t).x * (point(g,t+step).y - point(g,t-step).y);
    t+=step;
  } while (t<l);
  return (sgn(sa) > 0);
}

path counterclockdirected(path g,int n=10^3)
{
  // Return "g" (SIMPLE CURVE i.e. NON CROSSED) counterclockwise
  // Retourne "g" (NON CROISÉ) dans le sens des aiguilles d'une montre
  if (counterclockwise(g,n)) return g; else return reverse(g);
}

path p=unitcircle;
draw(counterclockdirected(reverse(p)),
     Arrow(Relative(.1)), BeginBar);
draw(counterclockdirected(p),
     Arrow(position=Relative(.2),FillDraw(red)), BeginBar);

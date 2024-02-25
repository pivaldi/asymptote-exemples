size(6cm,0, false);
bool counterclockwise(path g, pair z) {return windingnumber(g,z) > 0;}

path counterclockdirected(path g,pair z)
{
  if (counterclockwise(g,z)) return g; else return reverse(g);
}

pair z=(1,0);
dot(z);
path p=(0,0){N}..(4,0){N}..cycle;
draw(counterclockdirected(reverse(p),z),Arrow(Relative(.1)), BeginBar);
draw(counterclockdirected(p,z),Arrow(position=Relative(.2),FillDraw(red)), BeginBar);

pair z=(3,-2);
dot(z);
path p=(4,-2){N}..(0,-2){N}..cycle;
draw(counterclockdirected(reverse(p),z),Arrow(Relative(.1)), BeginBar);
draw(counterclockdirected(p,z),Arrow(position=Relative(.2),FillDraw(red)), BeginBar);

pair z=(1,-4.5);
dot(z);
path p=yscale(.75)*((0,-6){N}..(2,-6){S}..(0,-6){N}..(4,-6){S}..cycle);
draw(counterclockdirected(reverse(p),z),Arrow(Relative(.1)), BeginBar);
draw(counterclockdirected(p,z),Arrow(position=Relative(.2),FillDraw(red)), BeginBar);

pair z=(3,-8);
dot(z);
path p=shift((0,-3.5))*p;
draw(counterclockdirected(reverse(p),z),Arrow(Relative(.1)), BeginBar);
draw(counterclockdirected(p,z),Arrow(position=Relative(.2),FillDraw(red)), BeginBar);

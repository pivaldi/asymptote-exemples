import graph;

void graphicrules(picture pic=currentpicture, real unit=1cm,
                  real xunit=unit != 0 ? unit : 0,
                  real yunit=unit != 0 ? unit : 0,
                  real xmin, real xmax, real ymin, real ymax)
{
  xlimits(xmin, xmax);
  ylimits(ymin, ymax);
  pic.unitsize(x=xunit,y=yunit);
}

picture millimeterpaper(picture pic=currentpicture, pair O=(0,0),
                        real xmin=infinity, real xmax=infinity,
                        real ymin=infinity, real ymax=infinity,
                        pen p=.5bp+orange)
{
  picture opic;
  real
    cofx=pic.xunitsize/cm,
    cofy=pic.yunitsize/cm;
  real
    xmin= (xmin == infinity) ? pic.userMin().x*cofx : xmin*cofx,
    xmax= (xmax == infinity) ? pic.userMax().x*cofx : xmax*cofx,
    ymin= (ymin == infinity) ? pic.userMin().y*cofy : ymin*cofy,
    ymax= (ymax == infinity) ? pic.userMax().y*cofy : ymax*cofy;
  path
    ph=(xmin*cm,0)--(xmax*cm,0),
    pv=(0,ymin*cm)--(0,ymax*cm);
  real [] step={5, 1, .5, .1};
  pen [] p_={ p, scale(.7)*p, scale(.4)*p, scale(.2)*p};

  for (int j=0; j<4; ++j)
    {
      for (real i=O.y; i<= ymax; i+=step[j])
        draw(opic, shift(0,i*cm)*ph, p_[j]);
      for (real i=O.y; i>=ymin ; i-=step[j])
        draw(opic, shift(0,i*cm)*ph, p_[j]);
      for (real i=O.x; i<=xmax; i+=step[j])
        draw(opic, shift(i*cm,0)*pv, p_[j]);
      for (real i=O.x; i>=xmin; i-=step[j])
        draw(opic, shift(i*cm,0)*pv, p_[j]);
    }

  return opic;
}

graphicrules(xunit=2cm, yunit=1.5cm, xmin=-3, xmax=2, ymin=-2, ymax=2);
add(millimeterpaper(p=3bp+orange),(0,0));
xaxis(xmin=-3, xmax=2, Ticks("%"));
yaxis(ymin=-2, ymax=2, Ticks("%"));
xequals(Label("$y$",align=2NW),0,ymin=-2.25, ymax=2.25, p=linewidth(1.5pt), Arrow(2mm));
yequals(Label("$x$",align=2SE),0,xmin=-3.25, xmax=2.25, p=linewidth(1.5pt), Arrow(2mm));
labelx(Label("$1$",UnFill), 1);
labely(Label("$1$",UnFill), 1);
labelx("$O$",0,SW);
dot((0,0));

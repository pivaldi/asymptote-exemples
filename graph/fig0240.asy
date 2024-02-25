import graph;

// public real xunit=1cm,yunit=1cm;

void graphicrules(picture pic=currentpicture, string prefix=defaultfilename, real unit=1cm,
                  real xunit=unit != 0 ? unit : 0,
                  real yunit=unit != 0 ? unit : 0,
                  real xmin, real xmax, real ymin, real ymax)
{
  xlimits(xmin, xmax);
  ylimits(ymin, ymax);
  unitsize(x=xunit, y=yunit);
}

struct rational
{
  int p;
  int q;
  real ep=1/10^5;
};

rational operator init() {return new rational;}

rational rational(real x, real ep=1/10^5)
{
  rational orat;
  int q=1;
  while (abs(round(q*x)-q*x)>ep)
    {
      ++q;
    }
  orat.p=round(q*x);
  orat.q=q;
  orat.ep=ep;
  return orat;
}

int pgcd(int a, int b)
{
  int a_=abs(a), b_=abs(b), r=a_;
  if (b_>a_) {a_=b_; b_=r; r=a_;}
  while (r>0)
    {
      r=a_%b_;
      a_=b_;
      b_=r;
    }
  return a_;
}

string texfrac(int p, int q,
               string factor="",
               bool signin=false, bool factorin=true,
               bool displaystyle=false,
               bool zero=true)
{
  if (p==0) return (zero ? "$0$" : "");
  string disp= displaystyle ? "$\displaystyle " : "$";
  int pgcd=pgcd(p,q);
  int num= round(p/pgcd), den= round(q/pgcd);
  string nums;
  if (num==1)
    if (factor=="" || (!factorin && (den !=1))) nums="1"; else nums="";
  else
    if (num==-1)
      if (factor=="" || (!factorin && (den !=1))) nums="-1"; else nums="-";
    else nums= (string) num;
  if (den==1) return "$" + nums + factor + "$";
  else
    {
      string dens= (den==1) ? "" : (string) den;
      if (signin || num>0)
        if (factorin)
          return disp + "\frac{" + nums + factor + "}{" + (string) dens + "}$";
        else
          return disp + "\frac{" + nums + "}{" + (string) dens + "}"+ factor + "$";
      else
        {
          if (num==-1)
            if (factor=="" || !factorin) nums="1"; else nums="";
          else nums=(string)(abs(num));
          if (factorin)
            return disp + "-\frac{" + nums + factor + "}{" + (string) dens + "}$";
          else
            return disp + "-\frac{" + nums + "}{" + (string) dens + "}"+ factor + "$";
        }
    }
}

string texfrac(rational x,
               string factor="",
               bool signin=false, bool factorin=true,
               bool displaystyle=false,
               bool zero=true)
{
  return texfrac(x.p, x.q, factor, signin, factorin, displaystyle, zero);
}

ticklabel labelfrac(real ep=1/10^5, real factor=1.0,
                    string symbol="",
                    bool signin=false, bool symbolin=true,
                    bool displaystyle=false,
                    bool zero=true)
{
  return new string(real x)
    {
      return texfrac(rational(x/factor), symbol, signin, symbolin, displaystyle, zero);
    };
}

ticklabel labelfrac=labelfrac();

void grid(picture pic=currentpicture,
          real xmin=pic.userMin().x, real xmax=pic.userMax().x,
          real ymin=pic.userMin().y, real ymax=pic.userMax().y,
          real xStep=1, real xstep=.5,
          real yStep=1, real ystep=.5,
          pen pTick=nullpen, pen ptick=grey, bool above=true)
{
  xaxis(pic, BottomTop, xmin, xmax, Ticks("%",extend=true,Step=xStep,step=xstep,pTick=pTick,ptick=ptick), above=above);
  yaxis(pic, LeftRight, ymin, ymax, Ticks("%",extend=true,Step=yStep,step=ystep,pTick=pTick,ptick=ptick), above=above);
}

void cartesianaxis(picture pic=currentpicture,
                   Label Lx=Label("$x$",align=S),
                   Label Ly=Label("$y$",align=W),
                   real xmin=pic.userMin().x, real xmax=pic.userMax().x,
                   real ymin=pic.userMin().y, real ymax=pic.userMax().y,
                   real extrawidth=1, real extraheight=extrawidth,
                   pen p=currentpen,
                   ticks xticks=Ticks("%",pTick=nullpen, ptick=grey),
                   ticks yticks=Ticks("%",pTick=nullpen, ptick=grey),
                   bool above=true,
                   arrowbar arrow=Arrow)
{
  extraheight= cm*extraheight/(2*pic.yunitsize);
  extrawidth = cm*extrawidth/(2*pic.xunitsize);
  yequals(pic, Lx, 0, xmin-extrawidth, xmax+extrawidth, p, above, arrow=arrow);
  yequals(pic, 0, xmin, xmax, p, xticks, above);
  xequals(pic, Ly, 0, ymin-extraheight, ymax+extraheight, p, above, arrow=arrow);
  xequals(pic, 0, ymin, ymax, p, yticks, above);
}

void labeloij(picture pic=currentpicture,
              Label Lo=Label("$O$",NoFill),
              Label Li=Label("$\vec{\imath}$",NoFill),
              Label Lj=Label("$\vec{\jmath}$",NoFill),
              pair diro=SW, pair diri=S, pair dirj=W,
              pen p=scale(2)*currentpen,
              filltype filltype=NoFill, arrowbar arrow=Arrow(2mm))
{
  if (Lo.filltype==NoFill) Lo.filltype=filltype;
  if (Li.filltype==NoFill) Li.filltype=filltype;
  if (Lj.filltype==NoFill) Lj.filltype=filltype;
  labelx(pic, Lo, 0, diro, p);
  draw(pic, Li, (0,0)--(1,0), diri, p, arrow);
  draw(pic, Lj, (0,0)--(0,1), dirj, p, arrow);
  dot(pic, (0,0), dotsize(p)+p);
}

void labeloIJ(picture pic=currentpicture,
              Label Lo=Label("$O$",NoFill),
              Label LI=Label("$I$",NoFill),
              Label LJ=Label("$J$",NoFill),
              pair diro=SW, pair dirI=S, pair dirJ=W,
              pen p=currentpen,
              filltype filltype=NoFill, arrowbar arrow=Arrow)
{
  if (Lo.filltype==NoFill) Lo.filltype=filltype;
  if (LI.filltype==NoFill) LI.filltype=filltype;
  if (LJ.filltype==NoFill) LJ.filltype=filltype;
  labelx(pic, LI, 1, dirI, p);
  labely(pic, LJ, 1, dirJ, p);
  labelx(pic, Lo, 0, diro, p);
  dot(pic, (0,0), dotsize(p)+p);
}

graphicrules(xunit=1cm, yunit=3cm,
             xmin=-2pi, xmax=2pi, ymin=-1, ymax=1);
grid(xStep=pi/2, xstep=pi/4, yStep=.5, ystep=.25);
cartesianaxis(xticks=Ticks(Label(UnFill),labelfrac(factor=pi,symbol="\pi",symbolin=true, zero=false),Step=pi/2, step=pi/4, ptick=grey),
              yticks=Ticks(Label(UnFill),labelfrac(zero=false),Step=.5,step=.25, ptick=grey), arrow=None);
dot("$O$",(0,0),2SW);

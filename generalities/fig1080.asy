size(0,0);

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

for (int i=-4; i<=4; ++i)
  {
    label(texfrac(i,4), (i*cm,0));
    label(texfrac(i,4,signin=true), (i*cm,-cm));
    label(texfrac(i,4,factor="\pi"), (i*cm,-2cm));
    label(texfrac(i,4,factor="\pi",factorin=false), (i*cm,-3cm));
    label(texfrac(i,4,factor="\pi",signin=true,factorin=true), (i*cm,-4cm));
    label(texfrac(i,4,factor="\pi",signin=true,factorin=false,displaystyle=true,zero=false), (i*cm,-5cm));
  }

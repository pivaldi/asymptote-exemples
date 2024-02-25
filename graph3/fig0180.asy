import palette;
import math;
import graph3;

typedef real fct(real);
typedef pair zfct2(real,real);
typedef real fct2(real,real);

real binomial(real n, real k)
{
  return gamma(n+1)/(gamma(n-k+1)*gamma(k+1));
}

real factorial(real n) {
  return gamma(n+1);
}

real[] pdiff(real[] p)
{ // p(x)=p[0]+p[1]x+...p[n]x^n
  // retourne la dérivée de p
  real[] dif;
  for (int i : p.keys) {
    if(i != 0) dif.push(i*p[i]);
  }
  return dif;
}

real[] pdiff(real[] p, int n)
{ // p(x)=p[0]+p[1]x+...p[n]x^n
  // dérivée n-ième de p
  real[] dif={0};
  if(n >= p.length) return dif;
  dif=p;
  for (int i=0; i < n; ++i)
    dif=pdiff(dif);
  return dif;
}

fct operator *(real y, fct f)
{
  return new real(real x){return y*f(x);};
}

zfct2 operator +(zfct2 f, zfct2 g)
{// Défini f+g
  return new pair(real t, real p){return f(t,p)+g(t,p);};
}

zfct2 operator -(zfct2 f, zfct2 g)
{// Défini f-g
  return new pair(real t, real p){return f(t,p)-g(t,p);};
}

zfct2 operator /(zfct2 f, real x)
{// Défini f/x
  return new pair(real t, real p){return f(t,p)/x;};
}

zfct2 operator *(real x,zfct2 f)
{// Défini x*f
  return new pair(real t, real p){return x*f(t,p);};
}

fct fct(real[] p)
{ // convertit le tableau des coefs du poly p en fonction polynôme
  return new real(real x){
    real y=0;
    for (int i : p.keys) {
      y += p[i]*x^i;
    }
    return y;
  };
}

real C(int l, int m)
{
  if(m < 0) return 1/C(l,-m);
  real OC=1;
  int d=l-m, s=l+m;
  for (int i=d+1; i <=s ; ++i) OC *= i;
  return 1/OC;
}

int csphase=-1;
fct P(int l, int m)
{ // Polynôme de Legendre associé
  // http://mathworld.wolfram.com/LegendrePolynomial.html
  if(m < 0) return (-1)^(-m)*C(l,-m)*P(l,-m);
  real[] xl2;
  for (int k=0; k <= l; ++k) {
    xl2.push((-1)^(l-k)*binomial(l,k));
    if(k != l) xl2.push(0);
  }
  fct dxl2=fct(pdiff(xl2,l+m));
  return new real(real x){
    return (csphase)^m/(2^l*factorial(l))*(1-x^2)^(m/2)*dxl2(x);
  };
}

zfct2 Y(int l, int m)
{// http://fr.wikipedia.org/wiki/Harmonique_sph%C3%A9rique#Expression_des_harmoniques_sph.C3.A9riques_normalis.C3.A9es
  return new pair(real theta, real phi) {
    return sqrt((2*l+1)*C(l,m)/(4*pi))*P(l,m)(cos(theta))*expi(m*phi);
  };
}

real xyabs(triple z){return abs(xypart(z));}

size(16cm);
currentprojection=orthographic(0,1,1);

zfct2 Ylm;

triple F(pair z)
{
  //   real r=0.75+dot(0.25*I,Ylm(z.x,z.y));
  //   return r*expi(z.x,z.y);
  real r=abs(Ylm(z.x,z.y))^2;
  return r*expi(z.x,z.y);
}

int nb=4;
for (int l=0; l < nb; ++l) {
  for (int m=0; m <= l; ++m) {
    Ylm=Y(l,m);

    surface s=surface(F,(0,0),(pi,2pi),60);
    s.colors(palette(s.map(xyabs),Rainbow()));

    triple v=(-m,0,-l);
    draw(shift(v)*s);
    label("$Y_"+ string(l) + "^" + string(m) + "$:",shift(X/3)*v);
  }
}

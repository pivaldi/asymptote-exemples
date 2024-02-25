// pdf version of this animation: ADDPDF
import labelpath;
import animate;
animation A;

texpreamble("\usepackage[dvips,pdfpagemode=FullScreen]{hyperref}");
settings.outformat="pdf";
settings.tex="pdflatex";
defaultpen(fontsize(12pt));

size(16cm,0);
usepackage("mathrsfs, amsfonts,amsmath,amssymb");
picture pic, pic1, pic2, pic3;
real u=1, Y=2*pi+0.5;
pair yM=(u,Y*u), ym=(u,-Y*u);
path cle=scale(u)*unitcircle;
path arcg=arc((0,0),1.5*u,115,155);

void addtick(picture pic=currentpicture, Label L, pair z, pair dir=E, pen p=currentpen)
{
  transform R=rotate(degrees(dir));
  real width=1.5mm;
  Label L=L.copy();
  L.position(z);
  L.align(NoAlign,E);
  L.align.dir=R*L.align.dir*1.3*width/mm;
  L.p(p);
  pic.add(new void(frame f, transform t) {
      path g=(-width,0)--(width,0);
      picture opic;
      draw(opic,shift(t*z)*R*g,p);
      add(f,opic.fit());
    });
  add(pic,L);
}

path roll(picture pic=currentpicture, real x, int nb=50)
{
  real stp=x/(nb-1);
  return operator --(...
                     sequence(new guide(int t){
                         real tt=t*stp;
                         return shift(expi(tt))*((x-tt)*(-sin(tt),cos(tt)));
                       },nb));
}

pair EW(int sign){return sign > 0 ? E : W;}

string pm(int sign){return sign > 0 ? "" : "-";}

pen p(int sign){return sign > 0 ? red : blue;}
pen pw(int sign){return p(sign)+(sign > 0 ? currentpen : white);}

// Define common picture
draw(scale(1.25)*"+", arcg, Arrow());
dot("$0$", point(cle,0));

draw((-u,0)--(u,0)^^(0,-u)--(0,u));
draw("$1$",(0,0)--point(cle,1.5),Arrows(FillDraw(white)));

pic.add(currentpicture);// Save the common picture in 'pic'.

// Starting picture 1
draw((u,0)--yM, linewidth(bp)+p(1), Arrow(TeXHead));
draw(ym--(u,0), linewidth(bp)+p(-1));
arrow("\underline{Axe des réels}",(u,-0.75*Y*u),W,1cm);

real x=2.2, y=-x, maxe=2*pi+0.2;
addtick(Label("$1$",align=E), (u,1), p(1));
addtick(Label("$\frac{\pi}{2}$",align=E), (u,pi/2), p(1));
addtick(Label("$\pi$",align=E), (u,pi), p(1));
addtick(Label("$\frac{3\pi}{2}$",align=E), (u,3pi/2), p(1));
addtick(Label("$2\pi$",align=E), (u,2pi), p(1));
addtick(Label("$-1$",align=W), (u,-1), p(-1));
addtick(Label("$-\frac{\pi}{2}$",align=W), (u,-pi/2), p(-1));
addtick(Label("$-\pi$",align=W), (u,-pi), p(-1));
addtick(Label("$-\frac{3\pi}{2}$",align=W), (u,-3pi/2), p(-1));
addtick(Label("$-2\pi$",align=W), (u,-2pi), p(-1));

draw(Label("$\mathscr{C}$",Relative(0.625)), cle,linewidth(bp));
A.add();
erase();

// Define the common picture for rolling part.
picture picanim(int sign)
{
  picture opic=pic.copy();
  pen pmoins=sign > 0 ? p(-1) : p(-1)+white;
  draw(opic, (u,0)--yM, bp+white+p(1), Arrow(TeXHead));
  draw(opic, ym--(u,0), linewidth(bp)+pmoins);
  arrow(opic,"\underline{Axe des réels}", (u,-0.75*Y*u), W, 1cm);
  addtick(opic, Label("$1$",align=E), (u,1), white+p(1));
  addtick(opic, Label("$\frac{\pi}{2}$",align=E), (u,pi/2), white+p(1));
  addtick(opic, Label("$\pi$",align=E), (u,pi), white+p(1));
  addtick(opic, Label("$\frac{3\pi}{2}$",align=E), (u,3pi/2), white+p(1));
  addtick(opic, Label("$2\pi$",align=E), (u,2*pi), white+p(1));
  addtick(opic, Label("$-1$",align=W), (u,-1), pmoins);
  addtick(opic, Label("$-\frac{\pi}{2}$",align=W), (u,-pi/2), pmoins);
  addtick(opic, Label("$-\pi$",align=W), (u,-pi), pmoins);
  addtick(opic, Label("$-\frac{3\pi}{2}$",align=W), (u,-3pi/2), pmoins);
  addtick(opic, Label("$-2\pi$",align=W), (u,-2*pi), pmoins);
  return opic;
}

erase();
pic2=picanim(1);

int nb=50; // Number of picture for rolling.
real step=maxe/nb;

for (int sign=1; sign > -2; sign -= 2) {// Rolling axis part (1 for positive values, -1 for ...);
  guide r1,rpis2, rpi, rpi32, rpi2;
  pair z;
  for (int i=0; i <= nb ; ++i) {
    real t=sign*i*step; // Where is the tangency.

    if(sign > 0) draw(Label("$\mathscr{C}$",Relative(0.625)), cle,linewidth(bp));
    path tg=i == nb ? cle : arc((0,0),u,0,degrees(t)); // The rolled part.
    path g=u*expi(t)--shift(u*expi(t))*((Y-abs(t))*u*expi(sign*pi/2+t)); // The straight part.
    draw(g,linewidth(bp)+p(sign), sign > 0 ? Arrow(TeXHead) : None);

    if(t > 0) {
      if(abs(t) <= 1) {
        z=arcpoint(g, (1-abs(t))*u);
        addtick(Label(pm(sign)+"$1$",align=EW(sign)), z, expi(sign), p(sign));
        r1=r1..z;
      } else addtick(Label(pm(sign)+"$1$",align=EW(sign), UnFill),
                     u*(cos(sign),sin(sign)), dir(degrees(sign*1.0)), p(sign));}

    draw(r1, dashed+p(sign));

    if(abs(t) <= pi/2) {
      z=arcpoint(g,(pi/2-abs(t))*u);
      addtick(Label("$"+pm(sign)+"\frac{\pi}{2}$",align=EW(sign)), z, expi(t), p(sign));
      rpis2=rpis2..z;
    } else addtick(Label("$"+pm(sign)+"\frac{\pi}{2}$",align=EW(sign), UnFill),
                   (0,sign*u), sign*N, p(sign));

    draw(rpis2, dashed+p(sign));

    if(abs(t) <= pi) {
      z=arcpoint(g,(pi-abs(t))*u);
      addtick(Label("$"+pm(sign)+"\pi$",align=EW(sign)), z, expi(t), p(sign));
      rpi=rpi..z;
    } else addtick(Label("$"+pm(sign)+"\pi$",align=EW(sign), UnFill),
                   (-u,0), W, p(sign));

    draw(rpi,dashed);

    if(abs(t) <= 3*pi/2) {
      z=arcpoint(g,(3pi/2-abs(t))*u);
      addtick(Label("$"+pm(sign)+"\frac{3\pi}{2}$",align=EW(sign)), z, expi(t), p(sign));
      rpi32=rpi32..z;
    } else addtick(Label("$"+pm(sign)+"\frac{3\pi}{2}$",align=EW(sign), UnFill),
                   (0,-sign*u), sign*S, p(sign));

    draw(rpi32, dashed+p(sign));

    if(abs(t)-2*pi < -1e-5) {
      z=arcpoint(g,(2*pi-abs(t))*u);
      addtick(Label("$"+pm(sign)+"2\pi$",align=EW(sign)), z, expi(t), p(sign));
      rpi2=rpi2..z;
    } else addtick(Label("$"+pm(sign)+"2\pi$",align=(sign > 0 ? 2 : 1)*EW(sign), UnFill),
                   (u,0), E, p(sign));

    draw(rpi2, dashed+p(sign));

    if(i == nb && sign == 1) {
      draw(tg,linewidth(2*bp)+p(sign));
      pic3.add(currentpicture);
      add(pic2);
      pic2=picanim(-1);
      pic2.add(pic3);
    } else add(pic2); // Add the common picture 'pic2'.

    draw(tg,linewidth(bp)+p(sign));
    A.add();
    if(sign > 0 || i != nb) erase();
  }
}

for (int i=0; i < 10; ++i) A.add();
clip(scale(1.6)*cle);
for (int i=0; i < 10; ++i) A.add();

eval(quote{
    addtick(Label("$-\pi$",align=EW(-1), UnFill), (-u,0), W, p(-1));
    addtick(Label("$-2\pi$",align=EW(-1), UnFill), (u,0), E, p(-1));
    defaultfilename='temp_';
    shipout(currentpicture.fit(scale(2cm)));},true);

pair center=(min(currentpicture)+max(currentpicture))/2;
int n=20;
for (int i=0; i <= n; ++i) {
  erase();
  label(scale(1+1.25*i/n)*graphic("temp_.pdf"),i/n*center);
  A.add();
}

for (int i=0; i < 20; ++i) A.add();
for (int i=0; i < 10; ++i) A.add(A.pictures[0]); // Add the first picture in the animation.

A.movie();

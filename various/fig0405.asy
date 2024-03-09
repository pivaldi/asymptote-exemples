// PDF version of this picture: ADDPDF
import labelpath;

size(17cm,0);
usepackage("mathrsfs, amsfonts,amsmath,amssymb");
picture pic, pic1, pic2, pic3;
real u=1, Y=pi+0.2;
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

labelpath("\tiny Sens direct",reverse(arcg));
draw(arcg, Arrow());
draw(Label("$\mathscr{C}$",Relative(0.625)), cle,bp+grey);

dot("$O$", (0,0), S);
dot("$0$", point(cle,0));
dot("$I$", point(cle,0), 2*W);
dot("$J$", point(cle,1), 2*S);
dot("$K$", point(cle,2), 2*W);
dot("$L$", point(cle,3), 2*N);

draw("$1$",(0,0)--point(cle,2),Arrows);

pic.add(currentpicture);// Save the common picture.

// Starting picture 1
pair yM=(u,Y*u), ym=(u,-Y*u);
draw(ym--yM, linewidth(bp), Arrow(TeXHead));
arrow("\underline{Axe des r\'eels}",(u,-0.75*Y*u),W,1cm);

real x=2.2, y=-1.25;
addtick(Label("$1$", align=E),(u,1));
addtick(Label("$2$", align=E),(u,2));
addtick(Label("$-1$", align=E),(u,-1));
addtick(Label("$x$", align=E),(u,x));
addtick(Label("$y$", align=E),(u,y));

pic1.add(currentpicture);
erase();

// Starting picture 2
add(pic);
real t=x+0.1;

draw((u,0)--yM, bp+grey, Arrow(TeXHead));
path tg=arc((0,0),u,0,degrees(t));
draw(tg,linewidth(bp));
addtick(Label("$1$", align=E),u*(cos(1),sin(1)),dir(degrees(1.0)));
addtick(Label("$1$", align=E),(u,1), grey);

addtick(Label("$2$", align=E),(u,2),grey);
addtick(Label("$\frac{\pi}{2}$", align=E),(u,pi/2),grey);
addtick(Label("$\pi$", align=E),(u,pi),grey);
addtick(Label("$-1$", align=E),(u,-1));
addtick(Label("$x$", align=E),(u,x), grey);
addtick(Label("$x$", align=E),u*(cos(x),sin(x)),dir(degrees(x)));
addtick(Label("$y$", align=E),(u,-x));

dot("$M$", u*expi(x), -2*u*expi(x));

draw(Label("+",Relative(0.5)), roll(x), dotted, Arrow(Relative(0.5)));
draw(roll(1), dotted);
draw(Label("+",Relative(0.5)), roll(pi/2), dotted, Arrow(Relative(0.5)));
draw(Label("+",Relative(0.5)), roll(pi,100), dotted, Arrow(Relative(0.5)));

path g=u*expi(t)--shift(u*expi(t))*((Y-t)*u*expi(pi/2+t));
draw(g,linewidth(bp), Arrow(TeXHead));
addtick(Label("$\pi$", align=E),arcpoint(g,(pi-t)*u),expi(t));

pic3.add(currentpicture);
draw(ym--(u,0), linewidth(bp));
pic2.add(currentpicture);
erase();

// Starting picture 3

draw(ym--(u,0), linewidth(bp)+grey);
path tg=arc((0,0),u,0,degrees(-t));
draw(tg,linewidth(bp));
addtick(Label("$-1$", align=E),u*(cos(-1),sin(-1)),dir(degrees(-1.0)));
addtick(Label("$-1$", align=E),(u,-1), grey);

addtick(Label("$-2$", align=E),(u,-2),grey);
addtick(Label("$-\frac{\pi}{2}$", align=E),(u,-pi/2),grey);
addtick(Label("$-\pi$", align=E),(u,-pi),grey);

dot("$N$", u*expi(-x), -2*u*expi(-x));

g=roll(-x);
draw(Label("$-$",align=2*I*dir(g,0.5),Relative(0.5)), g, dotted, Arrow(NoFill,Relative(0.5)));
g=roll(-1);
draw(g, dotted);
g=roll(-pi/2);
draw(Label("$-$",align=2*I*dir(g,0.5),Relative(0.5)), g, dotted, Arrow(NoFill,Relative(0.5)));
g=roll(-pi,100);
draw(Label("$-$",align=2*I*dir(g,0.5),Relative(0.5)), g, dotted, Arrow(NoFill,Relative(0.5)));

g=u*expi(-t)--shift(u*expi(-t))*((Y-t)*u*expi(-pi/2-t));
draw(g, linewidth(bp), Arrow(TeXHead));
addtick(Label("$-\pi$", align=E),arcpoint(g,(pi-t)*u),expi(-t));


////////////////////////////////////////////////////////////
pic3.add(currentpicture);
erase();

add(pic1);
add(shift(4*u,0)*pic2);
add(shift(8*u,0)*pic3);
shipout(format="pdf");

import polyhedron_js;
import animate;
settings.render=0;
settings.tex="pdflatex";
settings.outformat="pdf";

size(16cm);
currentprojection=perspective(5,4,2);
currentlight=(5,4,2);

polyhedron Plane;
Plane[0]=(-2,-2,-1.5)--(2.5,-2,-1.5)--(2.5,2.5,-1.5)--(-2,2.5,-1.5)--cycle;
Plane[1]=(-2,-2,-1.5)--(-2,2.5,-1.5)--(-2,2.5,0)--(-2,-2,0)--cycle;

int n=180;
pen[] drawcol={black+1bp};
pen[] fcol1={0.8*red,0.8*blue,0.8*green,orange,heavycyan,gray};

animation anim;

triple[] posofsolids;
real angle;
for(int janim=0; janim < n; ++janim){
  for(int i=0; i < 5; ++i) {
    angle=2pi/5*i+2pi*janim/n;
    posofsolids[i]=(1.7*cos(angle)+1,1.7*sin(angle)+1,0);
  }
  transform3 T=rotate(-degrees(2*angle),Z);
  polyhedron[] parr={ shift(posofsolids[0])*T*icosahedron,
                      shift(posofsolids[1])*T*dodecahedron,
                      shift(posofsolids[2])*T*cube,
                      shift(posofsolids[3])*T*rotate(45,Z)*octahedron,
                      shift(posofsolids[4])*T*rotate(90,Z)*tetrahedron,
                      Plane };

  save();
  filldraw(parr,fcol=fcol1,dcol=drawcol,op=0.9);
  anim.add();
  restore();
}

anim.movie(BBox(3mm,darkblue+3bp+miterjoin,FillDraw(paleblue)));

import graph;

size(10cm,6cm,IgnoreAspect);

typedef real realfcn(real);
realfcn F(real p){
  return new real(real x){return sin(x)/sqrt(p);};
};

real pmax=5;
for (real p=1; p<=pmax; p+=1)
  {
    draw(graph(F(p),-2pi,2pi),
         ((p-1)/(pmax-1)*blue+(1-(p-1)/(pmax-1))*red),
         "$\frac{\sin(x)}{\sqrt{" + (string) p +"}}$");
  }

xlimits(-2pi,2pi);
ylimits(-1,1);

xaxis("$x$",BottomTop,Ticks);
yaxis("$y$",LeftRight,Ticks);

attach(legend(),point(E),20E,UnFill);

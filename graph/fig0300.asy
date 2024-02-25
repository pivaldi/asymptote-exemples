import graph;
unitsize(10cm,3cm);

typedef real realfcn(real);

realfcn betaFunction(real alpha, real beta){
  return new real(real x){
    return gamma(alpha+beta)/(gamma(alpha)+gamma(beta))*x^(alpha-1)*(1-x)^(beta-1);
  };
};


real[][] ab=new real[][] {{0.5,0.5},{5,1},{1,3},{2,2},{2,5}};
pen[] p=new pen[] {0.8*red, 0.8*green, 0.8*blue, 0.8*magenta, black};

for (int i=0; i < 5; ++i) {
  draw(graph(betaFunction(ab[i][0],ab[i][1]),1e-5,1-1e-5), bp+p[i],
       legend="$\alpha="+(string)ab[i][0]+",\;\beta="+(string)ab[i][1]+"$");
}

xlimits(0,1,Crop);
ylimits(0,2.6,Crop);

xaxis("$x$",BottomTop,linewidth(bp),Ticks);
yaxis("$y$",LeftRight,linewidth(bp),Ticks(Step=0.2));

attach(scale(0.75)*legend(linelength=3mm),point(N),5S,UnFill);

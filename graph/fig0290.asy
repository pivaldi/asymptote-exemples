import graph;
size(10cm);

xaxis("$x$", -2*pi,2*pi, Arrow);
yaxis("$y$", -4,4, Arrow);

typedef real realfcn(real); // Define new type: real function of real

realfcn TPC(int n) { //Return Taylor polynomial (degrees 2*n) of cos
  return new real(real x) {
    return sum(sequence(new real(int m){return (-1)^m*x^(2*m)/gamma(2*m+1);}, n+1));
  };
}
draw(graph(cos,-2pi,2pi), linewidth(2bp), legend="$\cos$");

int n=6; // Number of curves
pen[] p={palered, lightred, red, blue, purple, green};
p.cyclic=true; // p[6]=p[0], p[7]=p[1], etc...

for (int i=0; i < n; ++i) {
  draw(graph(TPC(i),-2*pi,2*pi), bp+p[i], legend="$T_{"+(string)i+"}$");
}

xlimits(-2*pi,2*pi, Crop);
ylimits(-4,4, Crop);

attach(legend(linelength=3mm),point(E),5E);
shipout(bbox(Fill(lightgrey)));

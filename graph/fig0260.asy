size(10cm,0);
import contour;
import stats;
import graph;

xlimits( -5, 5);  
ylimits( -4, 5);  
yaxis( "$y$" , Ticks(Label(currentpen+fontsize(8),align=E)));
xaxis( "$x$", Ticks(Label(currentpen+fontsize(8))));

real f(real x, real y) {return x^2-x-y^2+3y-6;}

int min=-5,
  max=5,
  n=max-min+1;

real[] value=sequence(min,max);

pen[] p=sequence(new pen(int i) {
    return (value[i] >= 0 ? solid : dashed) + 
    (value[i] >= 0 ? (value[i]/max)*red : (value[i]/min)*blue) + 
    fontsize(4);
  },n);

Label[] Labels=sequence(new Label(int i) {
    return Label(value[i] != 0 ? (string) value[i] : "",Relative(unitrand()),(0,0),
                 UnFill(1bp));
  },n);

draw(Labels,contour(f,(-5,-5),(5,5),value),p);

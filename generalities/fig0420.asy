path line=(0,0)--(5cm,0);

draw(line,linewidth(5bp),Arrow);
draw(shift(0,-2cm)*line,linewidth(5bp),Arrow(30bp,10));
draw(shift(0,-5cm)*line,linewidth(30bp),Arrow(20bp,50));
draw(shift(0,-8cm)*line,linewidth(10bp),Arrow(20bp,50,filltype=NoFill));

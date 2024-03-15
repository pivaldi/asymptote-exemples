size(16cm,0);

path[] P=texpath("$\displaystyle\int_{-\infty}^{+\infty}e^{-\alpha x^2}\,dx=
\sqrt{\frac{\pi}{\alpha}}$");
pair m=min(P), M=max(P);

axialshade(P,yellow,m,red,(m.x,M.y));
draw(P,0.5*blue);
shipout(bbox(3mm,Fill));

size(6cm,6cm);

pair A, B, C;
A=(0,0); B=(1,0); C=(0,1);
draw(A--B--C--cycle);
draw (midpoint(A--B) -- C);
draw (B+0.5*(C-B) -- A);
draw (interp(A,C,0.5) -- B);

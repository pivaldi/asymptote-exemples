size(2cm,2cm);
pair A, B, C;
A=(0,0); B=(1,0); C=(0,1);
draw(A--B--C--cycle);
draw (midpoint(A--B) -- C);
draw (B+0.5*(C-B) -- A);
draw (interp(A,C,0.5) -- B);
dot(A/3 + B/3 + C/3);

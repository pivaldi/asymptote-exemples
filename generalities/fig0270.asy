size(6cm,0);

pair A=(0,0), B=(1,0);

dot("$A$",A,N);
dot("$B$",B,N);
draw(interp(A,B,-.5)--interp(A,B,1.25));

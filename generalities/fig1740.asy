size(6cm,0);

path Line(pair A, pair B)
{
  return interp(A,B,-100000/arclength(A--B))--interp(A,B,100000/arclength(A--B));
}

path Parallel(pair A, pair dir)
{
  return Line(A,A+dir);
}

pair A=0, B=(1,0), C=(.7,.7);
draw(A--B, .8red);
draw(A--C, .8green);
draw(B--C, .8blue);

label("$A$",A,SW);
label("$B$",B,SE);
label("$C$",C,N);

pair Ap=intersectionpoint(Parallel(B, A-C), Parallel(C, A-B));
pair Bp=intersectionpoint(Parallel(A, B-C), Parallel(C, A-B));
pair Cp=intersectionpoint(Parallel(A, B-C), Parallel(B, A-C));

draw(Ap--Bp, .8red);
draw(Ap--Cp, .8green);
draw(Bp--Cp, .8blue);

label("$A'$",Ap,NE);
label("$B'$",Bp,NW);
label("$C'$",Cp,S);

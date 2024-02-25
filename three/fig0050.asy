import three; import math;
size(8cm,0);
currentprojection=obliqueX;

real h=2;
triple A =(0,0,h), B=(h,0,0), C=(0,h,0), D=(0,0,0);
triple Ip=midpoint(A--C), J=midpoint(A--B);
triple K=shift((0,0,-0.25*h))*A;

triple M=interp(K,J,intersect(K,J,normal(new triple[]{B,C,D}),D));
triple Np=interp(K,Ip,intersect(K,Ip,normal(new triple[]{B,C,D}),D));

dot("$A$", A, align=Z);  dot("$B$", B, align=S);
dot("$C$", C, align=S);  dot("$D$", D, align=W);
dot("$I$", Ip, align=N); dot("$J$", J, align=W);
dot("$K$", K, align=NE); dot("$M$", M, align=SE);
dot("$N$", Np, align=S);

draw(A--B--C--cycle^^B--M^^C--Np^^J--M^^Ip--Np);
draw(A--D--C^^D--B^^J--K^^K--Ip, dashed);

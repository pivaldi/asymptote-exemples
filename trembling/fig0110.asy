import trembling;
startTrembling(magnetizePoints=false);

size(12cm,0);

point A=(0,0), B=(5,2), C=(3,4);

triangle t=triangle(A,B,C),
et1=triangle(A,B,rotate(-60,A)*B),
et2=triangle(B,C,rotate(-60,B)*C),
et3=triangle(C,A,rotate(-60,C)*A);

draw(et1^^et2^^et3, 0.8*red);
dot(et1.Path()^^et2.Path()^^et3.Path());
draw(t); label(t, alignFactor=2.5);

point[] F=fermat(t);
dot("$F_1$",F[0], S, red);
dot("$F_2$",F[1], W, purple);

draw(circle(et1)^^circle(et2)^^circle(et3), 0.8*green);

draw(line(C,et1.C)^^line(A,et2.C)^^line(B,et3.C), 0.8*blue);
label("$N_1$",et1.VC);
label("$N_2$",et2.VC);
label("$N_3$",et3.VC);

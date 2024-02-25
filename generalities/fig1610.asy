size(10cm,0);

texpreamble("\usepackage{amsmath}
             \DeclareMathOperator{\e}{e}");

pair A=2*expi(pi/3);
pair B=expi(pi/6);
pair C=A*B;
pair D=C-B;
pair Bp=2*B;
pair E=I*D;

draw((0,-2)--(0,2.5));
draw((0,0)--(1,0),linewidth(1mm),Arrow(2mm));
draw((-3,0)--(3.5,0));
draw((0,0)--(0,1),linewidth(1mm),Arrow(2mm));

dot(Label("$A(z_a=2\e^{i\frac{\pi}{3}})$"),A);
dot(Label("$B(z_a=\e^{i\frac{\pi}{6}})$"),B);
dot(Label("$B'(z_{b'}=2z_b)$"),Bp);
dot(Label("$\overline{A}(\overline{z_a})$"),conj(A));
dot(Label("$C(z_c=z_a z_c)$"),C,NE);
dot(Label("$D(z_d=z_c-z_d)$"),D,NW);
dot(Label("$E(z_e=iz_d)$"),E,NW);

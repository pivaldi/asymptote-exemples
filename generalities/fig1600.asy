size(0,6cm);

texpreamble("\usepackage{amsmath}
             \DeclareMathOperator{\e}{e}");

pair A=2*expi(pi/3);

draw((0,-2)--(0,2.5));
draw((0,0)--(1,0),linewidth(1mm),Arrow(2mm));
draw((0,0)--(3.5,0));
draw((0,0)--(0,1),linewidth(1mm),Arrow(2mm));

dot(Label("$A(z_a=2\e^{i\frac{\pi}{3}})$"),A,NE);
label(format("$\vert z_a\vert=%.1f$",length(A)),(.5,-1),E);
label(format("$\arg(z_a)\simeq%.4f$",angle(A)),(.5,-2),E);

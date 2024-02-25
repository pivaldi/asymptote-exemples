size(0,0);

pair A=0, B=(3cm,5cm), C=(6cm,0);

pair ctrl_rgt_A, ctrl_lft_B, ctrl_rgt_B, ctrl_lft_C;
ctrl_rgt_A=A+2cm*E;
ctrl_lft_B=B+3cm*W;
ctrl_rgt_B=B+3cm*E;
ctrl_lft_C=C+2cm*W;

draw(A..B..C);
draw(A.. controls ctrl_rgt_A and ctrl_lft_B ..B.. controls ctrl_rgt_B and ctrl_lft_C ..C,1mm+grey);
dot(A--B--C,linewidth(6bp));
draw((A--ctrl_rgt_A),Arrow, p=grey);
draw((B--ctrl_rgt_B),Arrow, p=grey);
draw((B--ctrl_lft_B),Arrow, p=grey);
draw((C--ctrl_lft_C),Arrow, p=grey);

size(6cm,0);
pair A=0, B=(1,0), C=(1,1);

draw("$1$",A--B);
draw("$1$",B--C);

// draw(rotate(dir(C--A))*"$\sqrt{2}$",C--A);
draw(Label("$\sqrt{2}$",Rotate(-dir(C--A))),C--A);

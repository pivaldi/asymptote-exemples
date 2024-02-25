size(2cm,0);
pair A=(0,0), B=(1,0), C=(0,1);

draw(A--B,.8white+6bp);
draw(A--C,.6white+6bp);
draw(B--C,.4white+6bp);

draw(A--B--C--cycle,yellow);

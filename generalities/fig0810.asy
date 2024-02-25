size(4cm,0);
pair A=0, B=(1,0), C=(2,2);;

draw(A--B--C--cycle);
dot("$A$",A,dir(C--A,B--A));  
dot("$B$",B,dir(C--B,A--B));  
dot("$C$",C,dir(A--C,B--C));

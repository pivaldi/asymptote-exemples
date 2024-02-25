size(8cm);
path p1 = (0,0){up}..(5,4)..(10,0){down};

pair post0=postcontrol(p1,0);
pair pre1=precontrol(p1,1);
pair post1=postcontrol(p1,1);
pair pre2=precontrol(p1,2);

dot(post0^^pre1^^post1^^pre2);
path p2 = (0,0)..controls post0 and pre1..(5,4)..controls post1 and pre2..(10,0); 

draw(p1,2mm+red);
draw(p2,linewidth(1mm));

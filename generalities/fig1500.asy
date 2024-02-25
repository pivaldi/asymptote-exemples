size(6cm,0);

path curv=(0,0)..(1,1)..(1.5,-1)..(3,0);
pair A=(0,-1), B=(3,.75);

defaultpen(1mm);
draw(curv);
draw(reflect(A,B)*curv,.8red);
draw(A--B,grey);

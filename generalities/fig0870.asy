size(6cm,0);
path g=(1,1)--(3,2);
draw(Label("a text",Rotate(dir(g))), g);
draw(Label("a text",red,Rotate(-dir(g)),align=I*dir(g)), g);

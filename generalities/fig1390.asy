size(8cm,0);
pair O=(0,0);
path p=(0,0){dir(0)}..{dir(45)}(2,2){dir(-45)}..{dir(0)}(4,0);

pair En1=dir(p, 1, -1);
pair En2=dir(p, 2, -1);
draw(p);
draw(Label("dir(p,1,-1)", EndPoint), point(p,1)--point(p,1)+En1, red, Arrow);
draw(Label("dir(p,2,-1)", EndPoint), point(p,2)--point(p,2)+En2, red, Arrow);

pair Ep0=dir(p, 0, 1);
pair Ep1=dir(p, 1, 1);
draw(Label("dir(p,0,1)", EndPoint), point(p,0)--point(p,0)+Ep0, blue, Arrow);
draw(Label("dir(p,1,1)", EndPoint, E), point(p,1)--point(p,1)+Ep1, blue, Arrow);

draw(p, dot);

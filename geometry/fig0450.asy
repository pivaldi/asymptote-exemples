import geometry;
size(10cm,0);

point c2=(13,5);
real r=4, R=abs(c2)-r;

circle[] C={circle(origin, 4), circle(c2,R)};
draw(C[0]^^C[1], blue);

segment s=segment(origin, c2);
draw(s, red, dot);

/*<asyxml><view file="modules/geometry.asy" type="point" signature="curpoint(line,real)"/></asyxml>*/
point T=curpoint(s,r/(r-R)*abs(c2));
dot(T);
/*<asyxml><view file="modules/geometry.asy" type="line" signature="tangents(circle,point)"/></asyxml>*/
line[] tgt=tangents(C[1], T);
draw(tgt);

point[][] t= new point[2][2];
for (int i=0; i < 2 ; ++i)
  for (int j=0; j < 2; ++j) {
    /*<asyxml><view file="modules/geometry.asy" type="point[]" signature="intersectionpoints(line,circle)"/></asyxml>*/
    t[i][j]=intersectionpoints(C[i],tgt[j])[0];
    draw(C[i].C--t[i][j], dot);
    markrightangle(T, t[i][j], C[i].C, size=(i == 0 ? 2mm : 0));
  }

addMargins(cm/2,cm/2);

size(10cm);

path g=box((-1,-1),(1,1));
pen [] col= new pen[]{gray,yellow};
real k=sqrt(10)/4;
transform T=scale(k)*rotate(degrees(acos(17/(16*k*sqrt(2)))));
int nb=10;

for (int i=0; i<nb; ++i) filldraw(T^i*g,col[i%2]);

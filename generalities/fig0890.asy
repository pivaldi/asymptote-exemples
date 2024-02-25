//From documentation of Asymptote
size(6cm,0); 

void distance(picture pic=currentpicture, pair A, pair B, Label L="", real n=0, pen p=currentpen) 
{
  real d=3mm;
  guide g=A--B;
  transform T=shift(-n*d*unit(B-A)*I);
  pic.add(new void(frame f, transform t) {
    picture opic;
    guide G=T*t*g;
    draw(opic,G,p,Arrows(NoFill),Bars,PenMargins); 
    label(opic,L,midpoint(G),UnFill(1)); 
    add(f,opic.fit());
  });
  pic.addBox(min(g),max(g),T*min(p),T*max(p));
} 
 
pair A=(0,0), B=(3,3);
 
dot(A); 
dot(B); 
distance(A,B,rotate(dir(A--B))*Label("$\ell$"),1); 

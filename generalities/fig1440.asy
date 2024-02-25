// Author: John Bowman
pair[] z=new pair[10]; 
z[0]=(0,100); z[1]=(50,0); z[2]=(180,0); 
for(int n=3; n <= 9; ++n) 
  z[n]=z[n-3]+(200,0); 
path p=z[0]..z[1]---z[2]---z[3] 
&z[3]..z[4]--z[5]::{up}z[6] 
&z[6]::z[7]---z[8]..{up}z[9]; 
defaultpen(linewidth(1));
draw(p, grey); 
dot(p); 

real len=50;
for(int i = 0; i < z.length; ++i) {
  pair z=point(p,i);
  draw(z--z+len*dir(p,i,-1),red);
  draw(z--z+len*dir(p,i,1),blue+dashed);
  draw(z-len*dir(p,i)--z+len*dir(p,i),green+Dotted(defaultpen()));
}

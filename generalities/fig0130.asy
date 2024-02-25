// From Asympote's FAQ
size(6cm,0); 
 
path p=(0,0)--(1,0); 
picture object; 
draw(object,scale(3cm)*p); 
 
add(object); 
add(object,(0,-10)); // Adds truesize object to currentpicture 

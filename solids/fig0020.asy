import solids;
currentlight=light(paleyellow, specularfactor=3, (2,4,6));

size(6cm,0);
draw(sphere(1,n=4*nslice), linewidth(bp), m=10);
draw(surface(sphere(1,n=4*nslice)), orange);

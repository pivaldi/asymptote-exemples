import solids;
currentlight=light(paleyellow, viewport=false,
                   (5,-5,10),(0,0,-10));

size(6cm,0);
draw(sphere(1,n=4*nslice), linewidth(bp), m=10);
draw(surface(sphere(1,n=4*nslice)), orange);

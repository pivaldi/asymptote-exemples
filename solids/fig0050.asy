import solids;
size(6cm,0);
currentlight=light(diffuse=yellow, specular=blue, specularfactor=5, (5,-5,10));
// currentprojection=orthographic(100,100,30);
real r=2;

skeleton s;
revolution sph=sphere(O,r);
draw(surface(sph),red);

triple cam=unit(currentprojection.camera);
revolution cle=revolution(O,r*(rotate(90,Z)*cam),cam);
draw(cle, 8pt+black);

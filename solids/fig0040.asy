import solids;
size(6cm,0);

currentprojection=orthographic(100,150,30);

real r=1;

skeleton s;
revolution sph=sphere(O,r);
draw(surface(sph), palegray);

path3 cle=rotate(90,X)*scale3(r)*unitcircle3;

triple cam=unit(currentprojection.camera);
real a=degrees(xypart(cam),false)-90;
real b=-sgn(cam.z)*aCos(sqrt(cam.x^2+cam.y^2)/abs(cam));
cle=rotate(b,cross(Z,cam))*rotate(a,Z)*cle;
draw(cle,4pt+red);

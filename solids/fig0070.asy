import solids;
size(6cm,0);
currentprojection=orthographic(1,2,2);

surface s=surface(sphere(1,n=10));

material m = material(
  diffusepen = 0.8*red,
  emissivepen= yellow,
  specularpen= red
);

material[] p={m, red, 0.8*(red+blue) , green, 0.8*blue};
p.cyclic=true;

draw(s,p);

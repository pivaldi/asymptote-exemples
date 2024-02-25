import solids;
currentprojection=orthographic(1,2,2);

size(6cm,0);
material m=
  //       diffusepen, ambientpen, emissivepen,  specularpen
  material(  grey,       yellow,     black,        orange);

draw(surface(sphere(1)), m);

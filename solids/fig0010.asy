import solids;
import three;
currentprojection=orthographic(1,2,2);

size(6cm,0);

material m = material(
  diffusepen=yellow,
  emissivepen=black,
  specularpen=orange,
  shininess=0.25,
  metallic=0.5,
  fresnel0=0.07
);

draw(surface(sphere(1)), m);

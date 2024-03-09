import solids;
import palette;
size(14cm,0);
currentlight=light(
  gray(0.4),
  specularfactor=3,
  (-0.5,-0.25,0.45),
  (0.5,-0.5,0.5),(0.5,0.5,0.75)
);

nslice=4*nslice;
surface s=surface(sphere(O,1));
draw(s,lightgrey);

path3 pl=plane((1,0,0),(0,1,0),(0,0,-1));
surface pls=shift(3,3,-1e-3)*scale(-6,-6,1)*surface(pl);
draw(pls,0.7*red);

real dist(triple z){return abs(z-Z);}

surface shade;
for (int i=0; i < currentlight.position.length; ++i) {
  shade=planeproject(pl,currentlight.position[i])*s;
  draw(shade,mean(palette((shade.map(dist)),
                          Gradient(black,gray(0.6)))),
       nolight);
}

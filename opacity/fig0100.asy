import edvenn_pi;

// HardLight: Multiplies or screens the colors, depending on the source color
// value. If the source color is lighter than 0.5, the backdrop is lightened
// as if it were screened; this is useful for adding highlights to a
// scene. If the source color is darker than 0.5, the backdrop is darkened
// as if it were multiplied; this is useful for adding shadows to a
// scene. The degree of lightening or darkening is proportional to the
// difference between the source color and 0.5; if it is equal to 0.5, the
// backdrop is unchanged. Painting with pure black or white produces
// pure black or white. The effect is similar to shining a harsh spotlight
// on the backdrop.
string blend="HardLight";

size(10cm,0);

path [] edvenn= EdVenn(4);
pen [] fillp= new pen[]{black, red, green, blue};
pen p=linewidth(1mm);

for (int i=0; i<4; ++i) {
  fillp[i]=fillp[i]+opacity(.5,blend=blend);
  filldraw(edvenn[i], fillpen=fillp[i], drawpen=linewidth((i+1)*mm/2));
 }

shipout(bbox(2mm,invisible),"pdf");

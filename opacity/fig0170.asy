import edvenn_pi;

// Luminosity: Creates a color with the luminance of the source color and the hue
// and saturation of the backdrop color. This produces an inverse
// effect to that of the Color mode.
string blend="Luminosity";

size(10cm,0);

path [] edvenn= EdVenn(4);
pen [] fillp= new pen[]{black, red, green, blue};
pen p=linewidth(1mm);

for (int i=0; i<4; ++i) {
  fillp[i]=fillp[i]+opacity(.5,blend=blend);
  filldraw(edvenn[i], fillpen=fillp[i], drawpen=linewidth((i+1)*mm/2));
 }

shipout(bbox(2mm,invisible),"pdf");

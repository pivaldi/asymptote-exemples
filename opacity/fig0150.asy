import edvenn_pi;

// Saturation: Creates a color with the saturation of the source color and the hue
// and luminance of the backdrop color. Painting with this mode in an
// area of the backdrop that is a pure gray (no saturation) produces no
// change.
string blend="Saturation";

size(10cm,0);

path [] edvenn= EdVenn(4);
pen [] fillp= new pen[]{black, red, green, blue};
pen p=linewidth(1mm);

for (int i=0; i<4; ++i) {
  fillp[i]=fillp[i]+opacity(.5,blend=blend);
  filldraw(edvenn[i], fillpen=fillp[i], drawpen=linewidth((i+1)*mm/2));
 }

shipout(bbox(2mm,invisible),"pdf");

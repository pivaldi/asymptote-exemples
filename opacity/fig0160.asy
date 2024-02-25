import edvenn_pi;

// Color: Creates a color with the hue and saturation of the source color and
// the luminance of the backdrop color. This preserves the gray levels
// of the backdrop and is useful for coloring monochrome images or
// tinting color images.
string blend="Color";

size(10cm,0);

path [] edvenn= EdVenn(4);
pen [] fillp= new pen[]{black, red, green, blue};
pen p=linewidth(1mm);

for (int i=0; i<4; ++i) {
  fillp[i]=fillp[i]+opacity(.5,blend=blend);
  filldraw(edvenn[i], fillpen=fillp[i], drawpen=linewidth((i+1)*mm/2));
 }

shipout(bbox(2mm,invisible),"pdf");

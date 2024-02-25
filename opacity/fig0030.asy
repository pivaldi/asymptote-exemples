import edvenn_pi;

// Multiply: Multiplies the backdrop and source color values:
// The result color is always at least as dark as either of the two constituent
// colors. Multiplying any color with black produces black;
// multiplying with white leaves the original color unchanged. Painting
// successive overlapping objects with a color other than black or
// white produces progressively darker colors.
string blend="Multiply";

size(10cm,0);

path [] edvenn= EdVenn(4);
pen [] fillp= new pen[]{black, red, green, blue};
pen p=linewidth(1mm);

for (int i=0; i<4; ++i) {
  fillp[i]=fillp[i]+opacity(.5,blend=blend);
  filldraw(edvenn[i], fillpen=fillp[i], drawpen=linewidth((i+1)*mm/2));
 }

shipout(bbox(2mm,invisible),"pdf");

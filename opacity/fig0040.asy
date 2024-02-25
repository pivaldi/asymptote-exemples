// The result does not support image conversion.
// You can view it in the file ADDPDF.

import edvenn_pi;

// Screen: Multiplies the complements of the backdrop and source color
// values, then complements the result:
// The result color is always at least as light as either of the two constituent
// colors. Screening any color with white produces white; screening
// with black leaves the original color unchanged. The effect is
// similar to projecting multiple photographic slides simultaneously
// onto a single screen.
string blend="Screen";

size(10cm,0);

path [] edvenn= EdVenn(4);
pen [] fillp= new pen[]{black, red, green, blue};
pen p=linewidth(1mm);

for (int i=0; i<4; ++i) {
  fillp[i]=fillp[i]+opacity(.5,blend=blend);
  filldraw(edvenn[i], fillpen=fillp[i], drawpen=linewidth((i+1)*mm/2));
 }

shipout(bbox(2mm,invisible),"pdf");

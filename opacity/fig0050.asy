import edvenn_pi;

// Overlay: Multiplies or screens the colors, depending on the backdrop color.
// Source colors overlay the backdrop while preserving its highlights
// and shadows. The backdrop color is not replaced but is mixed with
// the source color to reflect the lightness or darkness of the backdrop.
string blend="Overlay";

size(10cm,0);

path [] edvenn= EdVenn(4);
pen [] fillp= new pen[]{black, red, green, blue};
pen p=linewidth(1mm);

for (int i=0; i<4; ++i) {
  fillp[i]=fillp[i]+opacity(.5,blend=blend);
  filldraw(edvenn[i], fillpen=fillp[i], drawpen=linewidth((i+1)*mm/2));
 }

shipout(bbox(2mm,invisible),"pdf");

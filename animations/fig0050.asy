include "./makecd.asy";
import animate;
// settings.tex="pdflatex";
settings.keep = true;

animation A;
A.global=false;

real length = 4; // seconds
int fps = 50;
real rad = 6;
real ht = 2;
real pixsz = 300;
real ptsz = 1;
int loops = 6;
pen border = black;

real frames = length * fps;
picture tmp;

size(pixsz);
for (int i = 100 ; i < 100+frames ; ++i) {
  save();
  add(CayleyDiagram(nodeLocs, arrows, orders, arrowPens,
                    cam = (rad * cos(2 * i * pi/frames), rad * sin(2 * i * pi/frames), ht),
                    arrowThickness = 2, nodeSize = 0.02,
                    arrowMargin = 1mm, depthCueing = true ));
  draw(box((-ptsz/2, -ptsz/2), (ptsz/2, ptsz/2)), border);
  A.add();
  write( "Did " + (string)(i-99) + " out of " + (string)frames );
  restore();
}

write( "Merging..." );
A.movie(delay=(int)(100/fps));
write( "Done." );

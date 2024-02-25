size(10cm,0);
import math;

path cle=unitcircle;
path curv=reverse((1.5,2){dir(-60)}..(2.5,0)..{dir(60)}(3.5,2));

draw(cle);
draw(curv);

pair pt_cle=point(cle, 1.35);
pair pt_dir_cle=dir(cle, 1.35);

drawline((pt_cle - pt_dir_cle), (pt_cle + pt_dir_cle), red);

pair pt_curv=point(curv, dirtime(curv, pt_dir_cle));

drawline((pt_curv - pt_dir_cle), (pt_curv + pt_dir_cle), blue);

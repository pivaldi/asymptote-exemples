size(0,0);

path pt1=scale(2cm)*unitcircle;
path pt2=scale(1cm)*unitcircle;
path pt3=shift(0,.5cm)*pt2;

filldraw(pt1^^pt2^^pt3,evenodd+yellow+.9white);

size(3cm,0);
import palette;

real[][] v={{1,2},{3,4}};
pen[] Palette=Rainbow();

latticeshade(box((0,0),(1,1)),palette(v,Palette));

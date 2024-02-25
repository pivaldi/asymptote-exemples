import three;
import palette;

size(12cm);
currentprojection=orthographic(1,1,1.5);
currentlight=(1,0,1);

triple P00=-X-Y+0.5*Z, P03=-X+Y, P33=X+Y, P30=X-Y;

triple[][] P={
  {P00,P00+(-0.5,0.5,-1),P03+(0,-0.5,1),P03},
  {P00+(0.5,-0.5,-1),(-0.5,-0.5,0.5),(-0.5,0.5,-1.5),P03+(0.5,0,1)},
  {P30+(-0.5,0,1),(0.5,-0.5,-1.5),(0.5,0.5,1),P33+(-0.5,0,1)},
  {P30,P30+(0,0.5,1),P33+(0,-0.5,1),P33}
};

surface s=surface(patch(P));
s.colors(palette(s.map(zpart),Gradient(yellow,red)));
// s.colors(palette(s.map(zpart),Rainbow()));

draw(s);
draw(sequence(new path3(int i){
      return s.s[i].external();},s.s.length), bp+orange);


if(!is3D())
  shipout(bbox(Fill(lightgrey)));

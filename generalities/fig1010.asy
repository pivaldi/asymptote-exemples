size(8cm,0);

picture pic;
pen [] P={.8red,.7green,blue+.5grey,yellow+.6grey};

fill(scale(10)*unitcircle,.2blue);

for (int i = 0; i <= 3; ++i)
  draw(pic, arc((0,0),10,i*90,(i+1)*90), P[i]);

for (real i = 1; i <= 10; i+=.05)
  add(rotate(90*i)*scale(1/i)*pic);

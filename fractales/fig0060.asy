//From documentation of Asymptote
size(10cm);

// Draw Sierpinski triangle with top vertex A, side s, and depth q.
void Sierpinski(pair A, real s, int q,
                bool top=true, bool randcolor=false) {
  pair B=A-(1,sqrt(2))*s/2;
  pair C=B+s;
  if(top) draw(A--B--C--cycle);
  if (randcolor) {
    filldraw((A+B)/2--(B+C)/2--(A+C)/2--cycle,
             (.33*rand()/randMax*red+.33*rand()/randMax*green+.33*rand()/randMax*blue));
  } else draw((A+B)/2--(B+C)/2--(A+C)/2--cycle);
  if(q > 0) {
    Sierpinski(A,s/2,q-1,false,randcolor);
    Sierpinski((A+B)/2,s/2,q-1,false,randcolor);
    Sierpinski((A+C)/2,s/2,q-1,false,randcolor);
  }
}

Sierpinski((0,1), 1, 5, randcolor=true);

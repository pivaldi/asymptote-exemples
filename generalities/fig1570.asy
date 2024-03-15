size(0,0);

pair [] P, Q, R, S;
real u=2cm;

for (int i=0; i<=4; ++i)
  P[i] = rotate(i*360/5)*(0,-u);

P[5] = P[0];
for (int i=0; i<=4; ++i)
  Q[i] = 3*midpoint(P[i]--P[i+1]);

Q[5] = Q[0];
for (int i=0; i<=4; ++i)
  R[i] = 1/3*( Q[i] + Q[i+1] + P[i+1] );

R[5] = R[0];
for (int i=0; i<=5; ++i)
  S[i] = 1.5*Q[i];

fill(shift(-abs(S[0]),-abs(S[0]))*scale(2*abs(S[0]))*unitsquare,.2grey);

radialshade(scale(abs(S[0]))*unitcircle,lightgrey,(0,0),abs(S[0]),
            black,(0,0),abs(.85*midpoint(S[0]--S[1])));

P[6]=P[1];
for (int i=0; i<=4; ++i)
  {
    radialshade(S[i]--Q[i]--R[i]--Q[i+1]--S[i+1]--cycle,
                lightgrey,(0,0),abs(R[i]),
                black,(0,0),abs(S[i]));
    radialshade(R[i]--Q[i+1]--R[i+1]--P[i+2]--P[i+1]--cycle,
                .8red,(0,0),sqrt(1-(2-2cos(pi/5))/4)*u,
                black,(0,0),abs(Q[i+1]));
  }

for (real i=1; i>0; i-=.05)
  fill(rotate(90*(1-i))*scale(i)*(P[0]--P[1]--P[2]--P[3]--P[4]--cycle),
       (1-i)*red);

pen p=linewidth(1pt);
for (int i=0; i<=4; ++i)
  {
    draw(P[i]   -- P[i+1],p);
    draw(P[i+1] -- R[i],p);
    draw(Q[i]   -- R[i],p);
    draw(R[i]   -- Q[i+1],p);
    draw(Q[i]   -- S[i],p);
    draw(S[i]   -- S[i+1],p);
  }

shipout(bbox(0,black+4mm));

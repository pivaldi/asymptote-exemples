size(0,0);

pair [] P, Q, R, S;
real u=1cm;

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

for (int i=0; i<=4; ++i)
  {
    draw(P[i]   -- P[i+1]);
    draw(P[i+1] -- R[i]);
    draw(Q[i]   -- R[i]);
    draw(R[i]   -- Q[i+1]);
    draw(Q[i]   -- S[i]);
    draw(S[i]   -- S[i+1]);
  }

draw(P[2] -- P[3] -- P[4] -- P[0] -- P[1] --
     R[0] -- Q[0] -- R[4] -- Q[4] -- R[3]
     -- Q[3] -- R[2] -- Q[2] --
     S[2] -- S[3] -- S[4] -- S[0] -- S[1] --
     Q[1] -- R[1] -- cycle,
     linewidth(2bp));

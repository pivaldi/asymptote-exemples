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
    label(format("\small$P_%i$",i),P[i],-unit(P[i]));
    label(format("\small$Q_%i$",i),Q[i],rotate(60)*unit(Q[i]));
    label(format("\small$R_%i$",i),R[i],unit(R[i]));
    label(format("\small$S_%i$",i),S[i],unit(S[i]));
  }

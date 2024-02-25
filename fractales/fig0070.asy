size(8cm);
void koch(pair A, pair B, int n) {
  pair C;
  C =rotate(120, point(A--B,1/3))*A;
  if (n>0) {
    koch( A,        point(A--B,1/3), n-1);
    koch( point(A--B,1/3), C,        n-1);
    koch( C,        point(A--B,2/3), n-1);
    koch( point(A--B,2/3), B,        n-1);
  } else draw(A--point(A--B,1/3)--C--point(A--B,2/3)--B);
}

pair z0=(1,0);
pair z1=rotate(120)*z0;
pair z2=rotate(120)*z1;
koch( z0, z1, 3 );
koch( z1, z2, 3 );
koch( z2, z0, 3 );

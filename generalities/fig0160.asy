size(1cm,1cm);
pair [] A;
A[0]=(-1, -1);
A[1]=( 1, -1);
A[2]=( 1,  1);
A[3]=(-1,  1);
draw (A[0]--A[1]--A[2]--A[3]--cycle);
draw (A[0]--A[2]);
draw (A[1]--A[3]);

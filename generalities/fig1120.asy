size(6cm,0);
import roundedpath;

pair A=(0,0), B=(0,1), C=(1,0), D=(1,1);

draw(roundedpath(A--B--C--D,.5));
dot(A--B--C--D);

size(12cm,0);
import hull_pi;
import animation;
animation A;
settings.outformat="pdf";
A.global = false;

pair[] cloud;
int nbpt=200;

// Generate random points.
for (int i=0; i < nbpt; ++i)
  cloud.push((10*unitrand(),10*unitrand()));

for (int i=1; i < 8; ++i) { // Control the depth
  for (int j=0; j < 30; ++j) { // Point of view = cloud[i]
    real depthMax=i/2;
    // Nodes of the hull
    pair[] hull=hull(cloud,depthMin=0,depthMax=depthMax,angleMin=10,angleMax=360,pivot=j);

    save();// Add new picture to the animation
    filldraw(polygon(hull),lightgrey);
    dot(cloud[j],3mm+green);
    dot(cloud,red);
    label("depthMax="+(string)depthMax);
    A.add();
    restore();
  }
}

A.movie();

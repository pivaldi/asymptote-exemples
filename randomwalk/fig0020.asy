import three;
settings.render=0;

// The available directions of steps
triple[] dirs={X,-X,Y,-Y,Z,-Z};
dirs.cyclic=true;

struct walk
{
  triple[] nodes;
  pen[] p;
}

// Comput the nodes of the path
walk randWalk(real Srnd(), int n, pen[] p={currentpen})
{
  p.cyclic=true;
  walk ow;
  triple pos=O, tpos;
  for (int i=0; i < n; ++i) {
    int R=round(Srnd());
    tpos=pos+dirs[R];
    ow.nodes.push(tpos);
    ow.p.push(p[R]);
    pos=tpos;
  }
  return ow;
}

walk randWalk(int Srnd(), int n, pen[] p={currentpen})
{
  real R(){ return Srnd();}
  return randWalk(R,n,p);
}

void drawWalk(walk walk)
{
  triple camera=currentprojection.camera;
  if(currentprojection.infinity)
    camera *= max(abs(minbound(walk.nodes)),abs(maxbound(walk.nodes)));
  real[][] depth;
  for(int i=0; i < walk.nodes.length-1; ++i) {
    real d=abs(camera-0.5*(walk.nodes[i]+walk.nodes[i+1]));
    depth.push(new real[] {d,i});
  }
  depth=sort(depth);
  triple M=walk.nodes[round(depth[0][1])];
  triple m=walk.nodes[round(depth[depth.length-1][1]+1)];
  // Draw from farthest to nearest
  while(depth.length > 0) {
    real[] a=depth.pop();
    int i=round(a[1]);
    // dot(walk.nodes[i],walk.p[i]);
    draw(walk.nodes[i]--walk.nodes[i+1],abs(walk.nodes[i]-m)/abs(M-m)*(walk.p[i]+walk.p[i+1]));
  }
}


size(18cm);
currentprojection=orthographic((0.5,0.5,1));

drawWalk(randWalk(rand,50000,new pen[]{red, blue, green, yellow, purple}));
shipout(bbox(3mm,Fill));

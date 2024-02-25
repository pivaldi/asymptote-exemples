import three;
settings.render=0;

// The available directions of steps
triple[] dirs={X,-X,Y,-Y,Z,-Z};
dirs.cyclic=true;

// Return the nodes of the path
triple[] randWalk(real Srnd(), int n)
{
  triple[] randPath;
  triple camera=1e10*currentprojection.camera;
  triple pos=O, tpos;
  int R;
  for (int i=0; i < n; ++i) {
    R=round(Srnd());
    tpos=pos+dirs[R];
    randPath.push(tpos);
    pos=tpos;
  }
  return randPath;
}
triple[] randWalk(int Srnd(), int n)
{
  real R(){ return Srnd();}
  return randWalk(R,n);
}

void drawWalk(triple[] nodes, pen p=white)
{
  triple camera=currentprojection.camera;
  if(currentprojection.infinity)
    camera *= max(abs(minbound(nodes)),abs(maxbound(nodes)));
  real[][] depth;
  for(int i=0; i < nodes.length-1; ++i) {
    real d=abs(camera-0.5*(nodes[i]+nodes[i+1]));
    depth.push(new real[] {d,i});
  }
  depth=sort(depth);
  triple M=nodes[round(depth[0][1])];
  triple m=nodes[round(depth[depth.length-1][1]+1)];
  // Draw from farthest to nearest
  while(depth.length > 0) {
    real[] a=depth.pop();
    int i=round(a[1]);
    draw(nodes[i]--nodes[i+1],abs(nodes[i]-m)/abs(M-m)*p);
  }
}


size(18cm);
currentprojection=orthographic((1,1,1));

drawWalk(randWalk(rand,50000),cyan);
shipout(bbox(3mm,Fill));

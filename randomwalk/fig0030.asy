import three;
import stats;
settings.render=0;

string[] dirs={"U","D","B","F","R","L"};
// U=up, D=down, B=backward, F=forward, R=right, L=left
dirs.cyclic=true;

// Comput the nodes of the path
triple[] randWalk(real Srnd(), int n, real angle=90)
{
  triple[] randPath;
  triple udir=Z, vdir=X, kdir=cross(udir,vdir);
  triple pos=O, tpos;
  void changedir(real angle, triple axe)
  {
    transform3 T=rotate(angle,axe);
    udir=T*udir;
    vdir=T*vdir;
    kdir=T*kdir;
  }
  void nextdir()
  {
    string R=dirs[round(Srnd())];
    if(R == "R") changedir(-angle,kdir);
    else if(R == "L") changedir(angle,kdir);
    else if(R == "U") changedir(angle,vdir);
    else if(R == "D") changedir(-angle,vdir);
    else if(R == "B") changedir(180,udir);
  }
  for (int i=0; i < n; ++i) {
    tpos=pos+udir;
    randPath.push(tpos);
    pos=tpos;
    nextdir();
  }
  return randPath;
}

triple[] randWalk(int Srnd(), int n, real angle=90)
{
  real R(){ return Srnd();}
  return randWalk(R,n,angle);
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
    draw(nodes[i]--nodes[i+1],abs(nodes[i]-M)/abs(M-m)*p);
  }
}


size(18cm);
currentprojection=orthographic((0.5,0.5,1));

drawWalk(randWalk(Gaussrand,50000));

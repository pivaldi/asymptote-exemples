import three;
import stats;
settings.render=0;

struct walk
{
  triple[] nodes;
  pen[] p;
}

string[] dirs={"U","D","B","F","R","L"};
// U=up, D=down, B=backward, F=forward, R=right, L=left
dirs.cyclic=true;

// Comput the nodes of the path
walk randWalk(real Srnd(), int n, real angle=90, pen[] p={currentpen})
{
  p.cyclic=true;
  walk ow;
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
    int rd=round(Srnd());
    ow.p.push(p[rd]);
    string R=dirs[rd];
    if(R == "R") changedir(-angle,kdir);
    else if(R == "L") changedir(angle,kdir);
    else if(R == "U") changedir(angle,vdir);
    else if(R == "D") changedir(-angle,vdir);
    else if(R == "B") changedir(180,udir);
  }
  for (int i=0; i < n; ++i) {
    tpos=pos+udir;
    ow.nodes.push(tpos);
    pos=tpos;
    nextdir();
  }
  return ow;
}

walk randWalk(int Srnd(), int n, real angle=90, pen[] p={currentpen})
{
  real R(){ return Srnd();}
  return randWalk(R,n,angle,p);
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
    draw(walk.nodes[i]--walk.nodes[i+1],
         abs(walk.nodes[i]-m)/abs(M-m)*walk.p[i]);
  }
}


size(18cm);
currentprojection=orthographic((0.5,0.5,1));

drawWalk(randWalk(Gaussrand,50000,new pen[] {red,yellow,blue}));
shipout(bbox(3mm,Fill));

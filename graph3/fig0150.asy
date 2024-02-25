settings.render=0;
import graph3;
size(10cm);

currentprojection=orthographic(4,2,4);

real r(real Theta, real Phi){return 1+0.5*(sin(2*Theta)*sin(2*Phi))^2;}
triple f(pair z) {return r(z.x,z.y)*expi(z.x,z.y);}

pen[] pens(triple[] z)
{
  return sequence(new pen(int i) {
      real a=abs(z[i]);
      return a < 1+1e-3 ? black : interp(blue, red, 2*(a-1));
    },z.length);
}

surface s=surface(f,(0,0),(pi,2pi),100,Spline);
// Interpolate the corners, and coloring each patch with one color
// produce some artefacts
draw(s,pens(s.cornermean()));

if(!is3D())
  shipout(bbox(3mm,Fill(black)));

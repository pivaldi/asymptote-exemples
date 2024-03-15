// Venn diagram // Diagramme de Venn
// Edwards' construction // Construction d'Edwards
import roundedpath;
size(14cm,0);

path [] EdVenn(int n)
{
  path [] opath;
  if (n>=1)
    opath.push(shift(-1.4,-.9)*roundedpath(xscale(2.8)*yscale(.9)*unitsquare,.1));
  if (n>=2)
    opath.push(shift(0,-.9)*roundedpath(xscale(1.4)*yscale(1.8)*unitsquare,.1));
  if (n>=3)
    opath.push(scale(.5)*unitcircle);
  for (int i=1; i<=n-3; ++i)
    {
      pair pcle=point(opath[2],1/(2^i)),
        ccle=intersectionpoint(pcle--(pcle-dir(opath[2],1/(2^i))), (0,0)--(1,0));
      path cle=shift(ccle)*scale(abs(pcle-ccle))*unitcircle;
      real[] p1=intersect(cle, opath[2]);
      path ocle=subpath(cle,-p1[0],p1[0]);
      guide tpath;
      real step=360/(2^i), a=0;
      for (int j=0; j<2^i; ++j)
        {
          tpath=tpath..rotate(a)*ocle;
          a+=step;
        }
      opath.push(tpath..cycle);
    }
    return opath;
}

draw(EdVenn(6));

void enclose(picture pic=currentpicture, envelope e,
             Label[] L=new Label[],
             real xmargin=0, real ymargin=xmargin, pen p=currentpen,
             filltype filltype=NoFill, bool above=true)
{

  real H;
  real[] h;
  pic.add(new void (frame f, transform t) {
      frame[] d=new frame[];
      for (int i=0; i<L.length; ++i) {
        d[i]=newframe;
        Label LL=L[i].copy();
        add(d[i],t,LL);
        add(f,d[i]);
        h[i]=ypart(max(d[i])-min(d[i]));
        if(H < h[i]) H=h[i];
      }
      for (int i=0; i<L.length; ++i) {
        real emy=(H-h[i])/2;
        e(f,d[i],xmargin,ymargin+emy,p,filltype,above);
      }
    });
}

void box(picture pic=currentpicture, Label[] L=new Label[],
         real xmargin=0, real ymargin=xmargin, pen p=currentpen,
         filltype filltype=NoFill, bool above=true)
{
  enclose(pic,box,L,xmargin,ymargin,p,filltype,above);
}

box(new Label[] {
    Label("\begin{minipage}{3cm}Some text some text some text.\end{minipage}",(2.2cm,0)),
    Label("Hello.",0),
    Label("\begin{minipage}{3cm}Some text some text some
text some text some text some text some text.\end{minipage}",(5.4cm,0)),
    Label("Bye.\rule{0pt}{1.5cm}",(1cm,-3cm))
      });

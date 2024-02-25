import trembling;
size(12cm);
startTrembling();

currentcoordsys=cartesiansystem((2,1),i=(1,0.5),j=(-0.25,1));
show(currentcoordsys);

point A=(1,1);
line l1=line(45,A);
dot("$A$",A);
draw("$(l_1)$",l1);

point B=(3,1);
line l2=line(-60,B);
dot("$B$",B);
draw("$(l_2)$",l2);

markangleradiusfactor*=5;
markangle(2,l2,l1,0.8*green,StickIntervalMarker(i=1,n=2));

markangle(2,radius=-0.5*markangleradius(),
          l2,l1,0.8*blue);

markangle(reverse(l2),reverse(l1),Arrow,StickIntervalMarker(i=1,n=2));

markangle((string) sharpdegrees(l2,l1),
          radius=-1.5*markangleradius(),
          reverse(l2),l1,Arrow,red);

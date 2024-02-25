size(0,0);
pair A=(0,0), B=(4cm,0);
path line=A--B;
transform TD=shift(0,-cm);
transform TR=shift(2.5cm,0);

defaultpen(linewidth(3bp));

draw("$AB$",line,.8red,Arrows(3mm));  
draw("$A$",A,N); draw("$B$",B,N);

draw("$AB$",TD*line,.8red,Arrows(3mm),PenMargins);  
draw("$A$",TD*A,N); draw("$B$",TD*B,N);

draw("$AB$",TD^2*line,.8red,Arrows(3mm),DotMargins);  
dot("$A$",TD^2*A,dotfactor*NW); dot("$B$",TD^2*B,dotfactor*NE);

margin BigMargins=Margin(2,2);
draw("$AB$",TD^3*line,.8red,Arrows(3mm),BigMargins);  
draw("$A$",TD^3*A,N); draw("$B$",TD^3*B,N);


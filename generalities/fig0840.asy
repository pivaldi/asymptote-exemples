pair c=0;
label("abc xyz ijk",c,Align,basealign);
label("abc xyz ijk",c,Align,red);
draw(c--(c+(2cm,0))); // This is the baseline.

shipout((scale(3)*currentpicture.fit()));

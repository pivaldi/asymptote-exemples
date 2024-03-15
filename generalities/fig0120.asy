// From Asympote's FAQ
size(10cm,0);

path p=(0,0)--(1,0);

frame object;
draw(object, scale(8cm)*p);

add(object);
add(object, (0, -40));

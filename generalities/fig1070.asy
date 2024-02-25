// This file was compiled with this unix command: LC_NUMERIC="french" asy
size(0,0);
texpreamble("\usepackage[frenchb]{babel}");

pair x=0;

x+=(0,-1cm);
label(format("$x=%f$", 666666.666), x, E);
x+=(0,-1cm);
label(format("$x=%f$", pi), x, E);
x+=(0,-1cm);
label(format("$x=\nombre{%f}$", 666666.666), x, E);
x+=(0,-1cm);
label(format("$x=\nombre{%f}$", pi), x, E);

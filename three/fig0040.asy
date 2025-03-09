import three;
size(8cm, 0);
real radius=1, theta=37, phi=60;

currentprojection=perspective(4, 1, 2);

// Planes
pen bg=gray(0.9)+opacity(0.5);
draw(surface((1.2, 0, 0)--(1.2, 0, 1.2)--(0, 0, 1.2)--(0, 0, 0)--cycle), bg, bg);
draw(surface((0, 1.2, 0)--(0, 1.2, 1.2)--(0, 0, 1.2)--(0, 0, 0)--cycle), bg, bg);
draw(surface((1.2, 0, 0)--(1.2, 1.2, 0)--(0, 1.2, 0)--(0, 0, 0)--cycle), bg, bg);

real r=1.5;
draw(Label("$x$", 1), O--r*X, Arrow3(HookHead3));
draw(Label("$y$", 1), O--r*Y, Arrow3(HookHead3));
draw(Label("$z$", 1), O--r*Z, Arrow3(HookHead3));
label("$\rm O$",  (0, 0, 0), W);

triple pQ=radius*dir(theta, phi); // Point Q
// triple pQ=radius*expi(radians(theta), radians(phi)); // Point Q
draw(O--radius*dir(90, phi)^^O--pQ, dashed);
dot("$R*\mathrm{dir}\left(\theta, \phi\right)$", pQ);

// Arcs
draw("$\theta$", reverse(arc(O, 0.5*pQ, 0.5*Z)), N+0.3E, Arrow3(HookHead2));
draw("$\phi$", arc(O, 0.5*X, 0.5*(pQ.x, pQ.y, 0)), N+0.3E, Arrow3(HookHead2));

path3 p3=O--arc(O, radius, 0, phi, 90, phi)--cycle;
draw(surface(p3), blue+opacity(0.5));

import Lsystem;
size(8cm,0);

string[][] rules={
  {"F", "F+f-FF+F+FF+Ff+FF-f+FF-F-FF-Ff-FFF"},
  {"f", "ffffff"}
};

Lsystem oer=Lsystem("F+F+F+F",rules,La=91);

oer.iterate(2);
draw(oer.paths(), bp+0.8*yellow);
shipout(bbox(2mm, Fill(black)));

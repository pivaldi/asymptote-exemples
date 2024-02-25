import Lsystem;
size(12cm,0);

string[][] rules={{"F","-F+F-F-F+F+FF-F+F+FF+F-F-FF+FF-FF+F+F-FF-F-F+FF-F-F+F+F-F+"}};
Lsystem segment32Curve= Lsystem("F+F+F+F", rules, La=90, Lai=45);
segment32Curve.iterate(2);
filldraw(segment32Curve.paths()[0]&cycle, 0.8*yellow, blue);
shipout(bbox(3mm, Fill(black)));

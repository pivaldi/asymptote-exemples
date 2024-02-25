import Lsystem;
size(10cm,0);

string[][] rules={
  {"F", ""},
  {"P", "--FR++++FS--FU"},
  {"Q", "FT++FR----FS++"},
  {"R", "++FP----FQ++FT"},
  {"S", "FU--FP++++FQ--"},
  {"T", "+FU--FP+"},
  {"U", "-FQ++FT-"}
};

Lsystem pentive=Lsystem("Q", rules, La=36, Lai=180);

pentive.iterate(8);
draw(pentive.paths(), 0.8*yellow);
shipout(bbox(2mm, Fill(black)));

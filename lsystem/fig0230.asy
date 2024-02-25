import Lsystem;
size(10cm,10cm);
settings.outformat="pdf"; // for opacity

string[][] rules=new string[][]{{"F", "FF-[-F+F+F]+[+F-F-F]"}};
Lsystem plant=Lsystem("F", rules, La=22.5, Lai=90);
plant.iterate(5);
path[] g=plant.paths();

tree g=plant.tree();

for (int i:g.keys) {
  if((g[i].depth == 0)) draw(g[i].g, yellow);
}

for (int i:g.keys) {
  if((g[i].depth > 0 )) draw(g[i].g, green+opacity(0.5));
}

for (int i:g.keys) {
  if((g[i].depth > 15)) draw(g[i].g, brown+opacity(0.3));
}

shipout(bbox(Fill(paleyellow)));

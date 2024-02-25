import Lsystem;
size(10cm,10cm);
settings.outformat="pdf"; // for opacity

string[][] rules=new string[][]{{"F", "FF"},{"X", "F-[[X]+X]+F[+FX]-X"}};
Lsystem plant=Lsystem("X", rules, La=22.5, Lai=90);
plant.iterate(8);
path[] g=plant.paths();

tree g=plant.tree();

for (int i:g.keys) {
  if((g[i].depth <= 2 )) draw(g[i].g, yellow);
}

for (int i:g.keys) {
  if((g[i].depth > 2 ) && (g[i].depth <= 10 )) draw(g[i].g, green+opacity(0.5));
}

for (int i:g.keys) {
  if((g[i].depth > 11)) draw(g[i].g, brown+opacity(0.3));
}

shipout(bbox(Fill(paleyellow)));

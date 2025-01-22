import Lsystem;
size(10cm,0);

Lsystem Fass=Lsystem("-L",
                     new string[][]{{"L","LFLF+RFR+FLFL-FRF-LFL-FR+F+RF-LFL-FRFRFR+"},
                                    {"R","-LFLFLF+RFR+FL-F-LF+RFR+FLF+RFRF-LFL-FRFR"}},
                     La=90);
Fass.iterate(3);
draw(Fass.paths(), linewidth(1bp));

shipout(bbox(Fill(lightgrey)));

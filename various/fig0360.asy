// Carte à points 1.
import carteApoints;
settings.outformat="pdf";

add(scale(0.5)*carteApoints(1).fit()); //ADDPDF

shipout(bbox(2mm));

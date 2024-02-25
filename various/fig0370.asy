// Carte à points 2.
import carteApoints;
settings.outformat="pdf";

add(scale(0.5)*carteApoints(8).fit()); //ADDPDF

shipout(bbox(2mm));

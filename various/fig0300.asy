// On d�finit ce qu'est l'objet 'rectangle'
// On peut comparer �a � la d�finition d'une voiture:
// elle a des propri�t�s: la couleur, le nombre de portes...
// elle a aussi des actions (ou m�thodes en info): ouvrir la porte, tourner le volant, avancer...
struct rectangle
{
  pair A,B,C,D; // Ce sont des propri�t�s (au sens informatique): ses sommets.
  path path(){return A--B--C--D--cycle;} // Ceci est une action du rectangle (renvoyer le chemin du rectangle)
};

// Le constructeur de l'objet (une action qui renvoie l'objet).
// Chaque fois que l'on va d�finir une variable 'X' de type 'rectangle'
// c'est le retour de l'action rectangle.init qui est affect� � X.
rectangle operator init() {return new rectangle;}

// La fonction rectangle  qui prend en argument le coin inf�rieur gauche
// et le coin sup�rieur droit retourne un rectangle.
// On notera comment l'on r�cup�re une propri�t� ou une action d'un
// objet gr�ce au '.' en �crivant objet.propri�t� ou
// objet.action(les_param�tres).
rectangle rectangle(pair gb, pair dh)
{
  rectangle retour;
  retour.A=(dh.x,gb.y);
  retour.B=dh;
  retour.C=(gb.x,dh.y);
  retour.D=gb;
  return retour;
}

// On peut alors d�finir tous les op�rateurs que l'on veut sur les
// rectangles.
// par exemple la multiplication d'un r�al par un rectangle (x*rectangle):
rectangle operator *(real x, rectangle rectangle)
{
  rectangle retour;
  retour.A=rectangle.A+x*(rectangle.B-rectangle.A);
  retour.B=rectangle.B+x*(rectangle.C-rectangle.B);
  retour.C=rectangle.C+x*(rectangle.D-rectangle.C);
  retour.D=rectangle.D+x*(rectangle.A-rectangle.D);
  return retour;
}

// Ici, cette op�ration est commutative (rectangle*x=x*rectangle):
rectangle operator *(rectangle rectangle,real x){return x*rectangle;}

// On dit ici comment "Asymptote" doit convertir, si besoin est, un type 'rectangle'
// en 'path' puis en 'path[]' (tableau de 'path').
path operator cast(rectangle rectangle){return rectangle.path();}
path[] operator cast(rectangle rectangle){return rectangle.path();}
//Par exemple, dans le code:
/*
  rectangle SQ=rectangle((0,0), (1,1));
  draw(SQ);
*/
// 'draw' attend un type 'path' donc 'SQ' sera automatiquement converti.


// Maintenant on peut travailler avec cette structure
size(10cm);
rectangle SQ=rectangle((0,0), (1,1));
pen [] col= new pen[]{gray,yellow};

int nb=10;
for (int i=0; i<nb; ++i) {
  filldraw(SQ,col[i%2]);
  SQ=.25*SQ;
 }

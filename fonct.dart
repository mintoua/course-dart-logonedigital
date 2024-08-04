void main(){
  print ('Bonjour Alex');
  salutation("Salut");
  
  double result = calulPerimetreRectangle(10,5);
  print(result);
}

// Fonction pour saluer
void salutation (String value){
  print ("$value");
}
// Fonction calcul perimetre du rectangle

double calulPerimetreRectangle(double longueur, double largeur){
  return 2*(longueur+largeur);
}
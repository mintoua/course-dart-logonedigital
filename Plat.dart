/// Classe représentant un plat avec un nom et un prix.
class Plat {
//Attributs plat
  String nom;
  double prix;

//Constructeur 
  Plat(this.nom, this.prix);

  //Fonctions qui affiche un plat
  String afficheInfos() {
    return '$nom $prix FCFA';
  }
}

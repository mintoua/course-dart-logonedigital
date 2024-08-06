//Import de la Plat
import 'Plat.dart';

/// Classe représentant une commande avec un plat et une quantité.
class Commande {
  Plat plat;
  int quantite;

//Constructeur 
  Commande(this.plat, this.quantite);

//Fonction de calcule le prix d'un plat avec une quantité
  double calculerPrix() {
    return plat.prix * quantite;
  }

//Fonction qui affiche les infos d'une commande
  String afficheInfos() {
    return '${quantite}x ${plat.nom} - ${calculerPrix()} FCFA';
  }
}

import 'Commande.dart';
import 'Plat.dart';

/// Classe représentant le restaurant avec un menu et des commandes.
class Restaurant {
  List<Plat> menu = [];
  List<Commande> commandes = [];

  Restaurant() {
    // Initialisation du menu
    menu.add(Plat('Eru', 1800));
    menu.add(Plat('Ndole', 1500));
    menu.add(Plat('Sauce Jaune', 1200));
    menu.add(Plat('Salade', 800));
    menu.add(Plat('Boisson', 500));
  }

/// Affiche le menu des plats disponibles.
  void afficherMenu() {
    print("\n=== Menu de Restaurant ===");
    for (int i = 0; i < menu.length; i++) {
      print('${i + 1}. ${menu[i].afficheInfos()}');
    }
    print('${menu.length + 1}. Terminer la commande');
  }

/// Ajoute une commande à la liste des commandes.
  void ajouterCommande(int choix, int quantite) {
    if (choix > 0 && choix <= menu.length) {
      Plat platChoisi = menu[choix - 1];
      commandes.add(Commande(platChoisi, quantite));
      print("$quantite ${platChoisi.nom} ajouté(s) à la commande.");
    } else {
      print("Choix invalide.");
    }
  }


  /// Affiche le récapitulatif des commandes et calcule le total à payer.
  void afficherRecapitulatif() {
    double total = 0.0;
    print("\n=== Récapitulatif des Commandes ===");
    for (var commande in commandes) {
      total += commande.calculerPrix();
      print(commande.afficheInfos());
    }
    print("Total à payer : ${total} FCFA");
    print("Merci pour votre commande !");
  }
}
